<!-- ======= Hero Section ======= -->
<section id="hero" class="d-flex justify-cntent-center align-items-center">
  <div id="heroCarousel" class="carousel carousel-fade d-flex" data-ride="carousel">

<!-- Slides -->
    {{each hero_sliders as slider sort by sort_order }}
    <div class="carousel-item d-flex {{if {index} == 1 }}active{{end-if}}" style="background-image: url('{{slider.image.getImage()}}');" alt="{{slider.alt_text}}">
      <div class="carousel-container">
        <h2 class="animated fadeInDown">{{slider.header_text}}</h2>
        <p class="animated fadeInUp">{{slider.body_text}}</p>
        <a href="#about" {{if {slider.button_new_tab} == 1 }} target="blank" {{end-if}} class="btn btn-info animated fadeInUp scrollto">{{slider.button_text}}</a>
      </div>
    </div>
    {{end-each}}
<!-- End Slides -->

    <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon bx bx-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>

    <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
      <span class="carousel-control-next-icon bx bx-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>

  </div>
</section><!-- End Hero -->

<main id="main">

  <!-- ======= Icon Boxes Section ======= -->
  <section id="icon-boxes" class="icon-boxes">
    <div class="container">

      <div class="row">
        {{each hero_cards as card sort by sort_order }}
        {{$cols = {math(round(12/{card._length}))} }}
        <div class="col-lg d-flex align-items-stretch mb-5 mb-lg-0" data-aos="fade-up">
          <div class="icon-box d-flex flex-column align-items-center justify-content-between w-100">
            <div class="icon"><i class="bx {{card.boxicon}}"></i></div>
            <h3 class="title"><a href="">{{card.title}}</a></h3>
            <p class="description">{{card.content}}</p>
            <p></p>
            <a href="{{ if {card.button_link_external} }}{{card.button_link_external}}{{else-if {card.button_link_internal} }}{{truepath({card.button_link_internal})}}{{end-if}}"
            {{if {card.button_new_tab} }}target="_blank"{{end-if}} class="btn btn-info">{{card.button_text}}</a>
          </div>
        </div>
        {{end-each}}

      </div>

    </div>
  </section><!-- End Icon Boxes Section -->

  <!-- ======= Below the Fold Section ======= -->
  <section id="about" class="about textured">
    <div class="container" data-aos="fade-up">

      <div class="section-title btf">
        <h2>{{this.below_the_fold_title}}</h2>
        {{this.below_the_fold_content}}
      </div>
    </div>
  </section><!-- End About Us Section -->
  <!-- ======= Clients Section ======= -->
  {{if {this.display_testimonials} }}
  {{include testimonials-section}}
{{end-if}}


  <!-- ======= Why Us Section ======= -->
  <section id="why-us" class="why-us">
    <div class="container-fluid">

      <div class="row">

        <div class="col-lg-5 align-items-stretch video-box" style='background-image: url("{{this.faqs_image.getImage()}}");' data-aos="fade-right">
         {{if {this.faqs_video} }} <a href="{{this.faqs_video}}" class="venobox play-btn  mb-4" data-vbtype="video" data-autoplay="true"></a>{{end-if}}
        </div>

        <div class="col-lg-7 d-flex flex-column justify-content-center align-items-stretch" data-aos="fade-left">

          <div class="content">
            <h3>{{this.faqs_title}}</h3>
            {{this.faqs_content}}
          </div>

          <div class="accordion-list">
            <ul>
              {{each faqs as faq sort by sort_order}}
              <li data-aos="fade-up" data-aos-delay="{{faq._num}}00">
                <a data-toggle="collapse" {{if {faq._num} == 1 }} class="collapse" {{else}} class="collapsed" {{end-if}} href="#accordion-list-{{faq._num}}"><span>{{faq._num}}</span> {{faq.question}} <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                <div id="accordion-list-{{faq._num}}" class="collapse {{if {faq._num} == 1 }}show{{end-if}}" data-parent=".accordion-list">
                  {{faq.answer}}
                </div>
              </li>
            {{end-each}}
            </ul>
          </div>
          <div class="section-title">
        <a href="{{our_services.first().getUrl()}}#faq-section" class="btn btn-info">View More FAQs</a>
      </div>
        </div>

      </div>

    </div>
  </section><!-- End Why Us Section -->



  <!-- ======= Cta Section ======= -->
  <section id="cta" class="cta {{if {this.cta_image_color_overlay} }}color-overlay{{end-if}}" style="background-image:url('{{this.cta_background_image.getImage()}}')">
    <div class="container">

      <div class="row" data-aos="zoom-in">
        <div class="col-lg-9 text-center text-lg-left">
          <h3>{{this.cta_title}}</h3>
          {{this.cta_content}}
        </div>
        <div class="col-lg-3 cta-btn-container text-center">
          <a class="cta-btn align-middle" href="{{if {this.button_link_internal} }}{{truepath({this.button_link_internal})}}{{else}}{{this.button_link_external}}{{end-if}}"{{if {this.cta_new_tab} }}target="_blank"{{end-if}}>{{this.cta_button_text}}</a>
        </div>
      </div>

    </div>
  </section><!-- End Cta Section -->



  <!-- ======= cards Section ======= -->
  <section id="cards" class="cards section-bg">
    <div class="container" data-aos="fade-up">

      <div class="section-title">
        <h2>{{this.about_section_title}}</h2>
        {{this.about_section_content}}
      </div>

      <div class="row justify-content-center">
        {{each team1 as t1 sort by sort_order}}
        <div class="col-lg-6 mb-3" data-aos="fade-up" data-aos-delay="100">
                  <div class="card d-flex flex-row align-items-start justify-content-between">
                    <div class="pic align-self-center"><img src="{{t1.image.getImage(141,141,crop)}}" class="img-fluid" alt=""></div>
                    <div class="card-info col-md-8 d-flex flex-column">
                      <h4>{{t1.name}}</h4>
                      <span>{{t1.job_title}}</span>
                      <p>{{t1.bio_content.subWords(10)}}...</p>
                      <a class="venobox" data-vbtype="inline" href="#module{{t1._num}}">Read More</a>
                    </div>
                  </div>
                </div>
                <div id="module{{t1._num}}" class="" style="display:none;">
                  <div class="profile profile-smallimg">
                    <div class="profile__image">
                      <img src="{{t1.image.getImage()}}" alt="Vet">
                    </div>
                    <div class="profile__info">
                      <div class="card-info">
                        <h4>{{t1.name}}</h4>
                        <span>{{t1.job_title}}</span>
                        {{t1.bio_content}}
                      </div>
                    </div>
                  </div>
                </div>
        {{end-each}}
<div class="section-title">
        <a href="{{about.first().getUrl()}}" class="btn btn-info" title="">More About Us</a>
      </div>
    </div>
  </section><!-- End cards Section -->



  <!-- ======= Frequently Asked Questions Section ======= -->
  <section id="faq" class="faq section-bg">
    <div class="container" data-aos="fade-up">

      <div class="section-title">
        <h2>Our Services</h2>
      </div>

      <div class="faq-list" id="services-list">
        <ul>
          {{each services as service sort by sort_order limit 5 }}
          <li data-aos="fade-up" data-aos="fade-up" data-aos-delay="100">
            <i class="bx bx-check-circle icon-help"></i> <a data-toggle="collapse" {{if {service._num} == 1 }}class="collapse"{{else}}class="collapsed"{{end-if}} href="#serv-list-{{service._num}}">{{service.title}}<i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
            <div id="serv-list-{{service._num}}" class="collapse {{if {service._num} == 1 }}show{{end-if}}" data-parent="#services-list">
              <p>{{service.content}}</p>
            </div>
          </li>
{{end-each}}
        </ul>
      </div>
      <div class="section-title">
        <a href="{{our_services.first().getUrl()}}" class="btn btn-info">View More Services</a>
      </div>
    </div>
  </section><!-- End Frequently Asked Questions Section -->

  <!-- ======= Contact Section ======= -->
  {{include contact-section}}

</main><!-- End #main -->
