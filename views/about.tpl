<main id="main">
   {{include breadcrumbs}}
  <section id="about-page" class="">
    <div class="container">

      <div class="row">
        <div class="col-lg-12">
          <div class="entry-img hero" data-aos="fade-up" data-aos-delay="100">
              <img src="{{this.image.getImage()}}" alt="{{this.title}} Photo" class="img-fluid">
            </div>
            <div class="content" data-aos="fade-up" data-aos-delay="200">
              {{this.content}}
            </div>
            <div class="content cards">
              <h2>{{this.team_section_title}}</h2>
              <h3>{{each models as model}}{{if {model.name} == "team1" }}{{model.label}}{{end-if}}{{end-each}}</h3>
              <hr/>
              <div class="row py-4">
                {{each team1 as t1 sort by sort_order }}
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
              </div>
              <h3>{{each models as model}}{{if {model.name} == "team2" }}{{model.label}}{{end-if}}{{end-each}}</h3>
              <hr/>
              <div class="row py-4">
                {{each team2 as t2 sort by sort_order }}
                <div class="col-lg-4 mb-3" data-aos="fade-up" data-aos-delay="100">
                  <div class="card d-flex flex-row justify-content-between">
                    <div class="pic align-self-center"><img src="{{t2.image.getImage(141,141,crop)}}" class="img-fluid" alt=""></div>
                    <div class="card-info col-lg-6 col-md-8 d-flex flex-column">
                      <h4>{{t2.name}}</h4>
                      <span>{{t2.job_title}}</span>
                      {{if {t2.bio_content} }}
                      <p>{{t2.bio_content.subWords(10)}}...</p>
                      <a class="venobox" data-vbtype="inline" href="#module_b{{t2._num}}">Read More</a>
                      {{end-if}}
                    </div>
                  </div>
                </div>
                <div id="module_b{{t2._num}}" class="" style="display:none;">
                  <div class="profile profile-smallimg">
                    <div class="profile__image">
                      <img src="{{t2.image.getImage()}}" alt="Vet">
                    </div>
                    <div class="profile__info">
                      <div class="card-info">
                        <h4>{{t2.name}}</h4>
                        <span>{{t2.job_title}}</span>
                        {{t2.bio_content}}
                      </div>
                    </div>
                  </div>
                </div>
              {{end-each}}
              </div>
            </div>
        </div>

              </div>
        <!-- End about section -->
      </div>

    </div>
  </section><!-- End Blog Section -->
  <!-- ======= Clients Section ======= -->
  {{if {this.display_testimonials} }}
  {{include testimonials-section}}
  {{end-if}}<!-- End Clients Section -->
</main><!-- End #main -->
