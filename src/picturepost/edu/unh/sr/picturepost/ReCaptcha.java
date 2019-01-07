package edu.unh.sr.picturepost;

import java.io.BufferedWriter;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Scanner;

import javax.servlet.http.HttpServletRequest;

public class ReCaptcha {

	public static String URL = "https://www.google.com/recaptcha/api/siteverify";

	private static String escape_uri(String s) {
		String rv=null;
		try {
			rv = URLEncoder.encode(s, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// this can't happen
		} 
		return rv;
	}

	public static void verify(HttpServletRequest request) throws Exception {
        String SITE_KEY = Config.get("GOOGLE_RECAPTCHA_SITE_KEY");
        String SECRET_KEY = Config.get("GOOGLE_RECAPTCHA_SECRET_KEY");
		if (SITE_KEY==null || "".equals(SITE_KEY)) {
			return;
		}
	
		String userresponse = request.getParameter("g-recaptcha-response");
		if (userresponse == null || userresponse.isEmpty()) {
			String msg = "missing user response";
			throw new Exception(msg);
		}
				
		String dat = "secret=" + escape_uri(SECRET_KEY)
			+ "&response=" + escape_uri(userresponse) 
			+ "&remoteip=" + escape_uri(request.getRemoteAddr());
	
		// send request
		URL url = new URL(URL);
		HttpURLConnection con = (HttpURLConnection) url.openConnection();
		con.setDoOutput(true);
    	con.setRequestMethod("POST");
		BufferedWriter os = new BufferedWriter(new OutputStreamWriter(con.getOutputStream()));
    	os.write(dat);
    	os.close();
    	
    	// read response
    	StringBuilder buf = new StringBuilder();
	    Scanner httpResponseScanner = new Scanner(con.getInputStream());
    	while(httpResponseScanner.hasNextLine()) {
    		String line = httpResponseScanner.nextLine();
    		buf.append(line);
    	}
    	httpResponseScanner.close();
    	
      	Log.writeLog("out: " + buf.toString());
	}
	
	public static String getWidgetHtml() {
        String SITE_KEY = Config.get("GOOGLE_RECAPTCHA_SITE_KEY");
		return "<script src='https://www.google.com/recaptcha/api.js'></script><div class='g-recaptcha' data-sitekey='" + SITE_KEY + "'></div>";
	}

}
