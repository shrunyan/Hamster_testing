<main id="main">
{{include breadcrumbs}}

<!-- ======= Content Section ======= -->
<section id="services-page" class="">
<div class="container">

<div class="entry-img hero">
    <img src="{{this.image.getImage()}}" alt="{{this.image_alt}}" class="img-fluid">
  </div>
<div class="row pt-5">
<div class="{{if {this.display_section_links_sidebar} }}col-lg-8{{else}}col-lg-12{{end-if}}">          
  <div class="content shadow-entry">
    <h2>{{this.title}}</h2>
    {{this.content}}
  </div>
</div> <!--End Main Section -->
{{if {this.display_section_links_sidebar} }}
<div class="col-lg-4">
<div class="content shadow-entry">
  <div class="sidebar ">
    <div class="sidebar-item">
      <div class="msb" id="msb">
			<div class="side-menu-container">
				<ul class="sidebar-nav">
          {{sectionlinks}}
				</ul>
			</div>
    </div> 
    </div><!-- End sidebar inner-->
  </div>
</div>

</div><!-- End sidebar -->
{{end-if}}
<!-- End Content section -->
</div>
</div>
</section><!-- End Section -->
</main><!-- End #main -->
