<%@ include file="/includes/common.jsp" %>
<%@ include file="/includes/header.jsp" %>

<div align=center>
  <h1 style='display:inline-block;'>Stuff I Can Do</h1>
</div>

<%=wu.popNotifications()%>

<div class=well>
Your pictures contain a wealth of information. DEW has created software to help you use the properties of color and light and measurements to analyze features in your pictures. The sample activities, guides, and videos on this page describe some of the ways to get the most from your pictures!
</div>

<style>
#helppagecontent ul {
  padding: 0 0 0 20px;
}
#helppagecontent li + li {
  margin-top: 10px;
}
</style>


<div class=container>                        
 
 
     <div class="row">
           <div class="col-md-4">
       <h2>Where to Begin?</h2>

          <LI>Find posts on the map and add posts to my favorites list.
          <Li>Visit nearby Picture Posts.</LI>
          <LI>Start my own Picture Post.</LI> 
          <li>Take and upload pictures.</LI> 
          <LI>Make comments.</LI>
          <LI>View pictures to observe change.</LI> 
           <li><a href="https://itunes.apple.com/us/app/id849676550" target="_blank">iPhone Users - Get the iPhone app!</a>  


             <h2>Citizen Science Academy</h2>
             <img class='shadow pull-left' style='margin:0 16px 16px 0;' src="/images/CSA-NEON-logo.png" width="210"  alt="CSA Academy"  border="1px"> 
        <p class=clearfix><i>Explorations in Educational Settings</i> is an Online Course about Picture Post and other citizen science programs that is offered several times a year.</p>
         <p align="center"></p><a class="btn btn-default" href="http://www.citizenscienceacademy.org/courses/csa520" title="NEON Citizen science academy" target="_blank" role="button">See More</a></p>                       

</div>

      <div class="col-md-4">
       <h2>Want More?</h2>
         <h3>Plant Monitoring Activities</h3>

                    <p class=clearfix>  Plan and take repeated photographs for citizen science projects. Capture events, monitor a local park, a wetland, a riverbank, or even plants in the backyard!</p>
                      <UL STYLE="margin-top: 0px; margin-bottom: 0px;">
                        <LI><A href="adopt_leaf.jsp" title="Adopt a Leaf">Adopt a Leaf </A> - Record the opening of leaves or flowers in the spring.
                        <LI><A href="adopt_treeDBH.jsp" title="Adopt a Tree Diameter (DBH)">Adopt a Tree Diameter (DBH) </A> - Measure the changing diameter of one or more trees. 
                        
                        <LI><A href="adopt_canopy.jsp" title="Adopt a Canopy">Adopt a Canopy </A> - Capture the seasonal changes in percent leaf cover in a forest canopy. 
                         <LI><A href="adopt_cci.jsp" title="Adopt a climate change indicator">Adopt a Climate Change Indicator </A> - Track the timing of seasonal changes in greenness in existing pictures. 
                        <LI><A href="adopt_season.jsp" title="Adopt a Season">Adopt a Season </A> - Record the changing fall colors in deciduous trees. 
                         <LI><A href="https://www.usanpn.org/trail-resources" title="USANPN phenology trail resources">Set up a Phenology Walk </A> - Set up a site to highlight seasonal changes, aka - phenology, in plants.
                        <LI><A href="http://budburst.org" target="_blank" title="Project Budburst">Join Project Budburst. </A> - Contribute my seasonal observations to a national network.
                      </UL>
        <p align="center"></p><a class="btn btn-default" href="community-educators.jsp" role="button">Projects for Educators</a></p>

      </div>
      <div class="col-md-4">
        <h3>DEW Picture Analysis Tools</h3>
       <p><A href="http://dew.globalsystemsscience.org" target="_blank"><img class='shadow pull-left'  src="images/dew.logo200.png"   style='margin:0 16px 16px 0;' alt="DEW logo"></A></p>
        <p>DEW has created a software bundle and learning guides about color, light, and pixels, and how to use these to analyze features in digital images.
           <p align="center"></p><a class="btn btn-default" href="http://www.globalsystemsscience.org/software/download" role="button">Get DEW Software Bundle</a></p>
                      <h4>Included in the Software Bundle</h4>
                  <UL STYLE="margin-top: 0px; margin-bottom: 0px;">
                      <LI>ColorBasics <br>
                       Color plays an important role in the information contained in digital images. How well do you understand color? 
                      <LI>DigitalImageBasics&nbsp;<br/>
                      Learn about the concepts behind digital image analysis and try out the features of the <EM>Analyzing Digital Images</EM> program.
                      <LI>AnalyzingDigitalImages (ADI)<br/>
                    This is THE software tool: use this program for measuring spatial features in pictures such as length and area of items, for doing color analysis to view spectral features, and to measure change in two or more images.<BR/>
                       <LI>MovieTracker<br/>
                    Tools similar to ADI, but applied to movies instead of still images.<BR/>
                     <LI>ForestAnalysis (included in Analyzing Digital Images)&nbsp;<br/>
                     Select an area in the USA and explore how Old Growth forests have changed. How has the forest cover changed in your region or at the location of your Picture Post? 
                     </ul> 
      </div>
    </div>
</div container>


<%@ include file="/includes/footer.jsp" %>
