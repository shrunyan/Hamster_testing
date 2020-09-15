<main id="main">
   {{include breadcrumbs}}
  <!-- ======= Services Section ======= -->
  <section id="services-page" class="">
    <div class="container">

      <div class="row">

        <div class="col-lg-12">
          <div class="entry-img hero">
              <img src="{{this.image.getImage()}}" alt="{{this.title.}} Photo" class="img-fluid">
            </div>
            <div class="content">
              {{this.content}}
            </div>
            <div class="content accordions faq" id="faq">
              <div class="faq-list">
                <ul>
                    {{each services as service sort by sort_order}}
                  <li data-aos="fade-up" data-aos="fade-up" data-aos-delay="{{service._num}}00">
                    <i class="bx bx-check-circle icon-help"></i> <a data-toggle="collapse" {{if {service._num} == 1 }}class="collapse"{{else}}class="collapsed"{{end-if}} href="#service-list-{{service._num}}">{{service.title}}<i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                    <div id="service-list-{{service._num}}" class="collapse {{if {service._num} == 1 }}show{{end-if}}" data-parent=".faq-list">
                      {{service.content}}
                    </div>
                  </li>
{{end-each}}

                </ul>
              </div>
            </div>
        </div>
      </div>

    </div>
  </section><!-- End Services Section -->
  <!-- ======= FAQs Section ======= -->
  <section id="faqs-section" >
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="content">
              <h1>FAQs</h1>
            </div>
            <div class="content accordions faq" id="faq-section">
              <div class="faq-list">
                <ul>
            {{each faqs as faq sort by sort_order }}
                  <li data-aos="fade-up" data-aos="fade-up" data-aos-delay="{{faq._num}}00">
                    <i class="bx bx-check-circle icon-help"></i> <a data-toggle="collapse" {{if {faq._num} == 1 }}class="collapse"{{else}}class="collapsed"{{end-if}} href="#service-list-{{faq._num}}">{{faq.question}}<i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                    <div id="service-list-{{faq._num}}" class="collapse {{if {faq._num} == 1 }}show{{end-if}}" data-parent="#faq-section">
                      {{faq.answer}}
                    </div>
                  </li>
{{end-each}}

                </ul>
              </div>
            </div>
        </div>
      </div>

    </div>
  </section><!-- End FAQs Section -->
  <!-- ======= Clients Section ======= -->
  {{if {this.display_testimonials} }}
  {{include testimonials-section}}
  {{end-if}}
  <!-- End Clients Section -->
</main><!-- End #main -->
