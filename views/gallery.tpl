<main id="main">
	{{include breadcrumbs}}
	
	<!-- ======= Content Section ======= -->
	<section id="services-page" class="">
		<div class="container">
			<div class="row pt-5">
				<div class="col-lg-12">          
					<div class="content shadow-entry">
						<h1>{{this.title}}</h1>
						{{this.content}}
						{{each gallery_collections as collection sort by sort_order}}
						<div class="content gallery">
							<h2>{{collection.title}}</h2>
							<!---carousel----->
							<div class="justify-content-center">
								<div class="owl-carousel owl-theme">
									{{each gallery_media as med where med.gallery_collection = '{collection.zuid}' sort by sort_order}}
									<div class="item">
										<a href="{{if {med.external_url_video} }}{{med.external_url_video}}{{else}}{{med.image.getImage()}}{{end-if}}" data-toggle="lightbox" data-gallery="{{med.gallery_collection}}" >
											<img src="{{med.image.getImage(350,223,crop)}}" class="img-fluid">
										</a>
									</div>
									{{end-each}}
								</div>
							</div>
							<!----end carousel---->
						</div>
						{{end-each}}
					</div>
				</div> <!--End Main Section -->
				<!-- End Content section -->
			</div>
		</div>
	</section><!-- End Section -->
</main><!-- End #main -->
<style>
	.owl-theme .owl-controls .owl-page {
		display: inline-block;
	}
	.owl-theme .owl-controls .owl-page span {
		background: none repeat scroll 0 0 #869791;
		border-radius: 20px;
		display: block;
		height: 12px;
		margin: 5px 7px;
		opacity: 0.5;
		width: 12px;
	}
</style>
