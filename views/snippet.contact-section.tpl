<section id="contact" class="contact">
   <div class="container" data-aos="fade-up">
   <div class="section-title">
      <h2>{{contact.first().title}}</h2>
      {{contact.first().content}}
   </div>
   <div class="cards info row  flex-row d-flex aos-animate mb-5" data-aos="fade-down" data-aos-delay="100">
      <div class="col-lg px-lg-2 mt-4 mt-lg-0 d-flex">
         <div class="card address flex-row flex-fill">
            <i class="bx bxs-map align-self-center mr-3"></i>
            <div>
               <h4 class="mb-0">Location:</h4>
               <p class="mt-1 white-space-break">{{globals.address}}</p>
            </div>
         </div>
      </div>
      <div class="col-lg px-lg-2 mt-4 mt-lg-0 d-flex">
         <div class="card email flex-row flex-fill">
            <i class="bx bx-envelope-open align-self-center mr-3"></i>
            <div >
               <h4 class="mb-0">Email:</h4>
               <p><a href="mailto:{{globals.contact_email}}">{{globals.contact_email}}</a></p>
            </div>
         </div>
      </div>
      <div class="col-lg px-lg-2 mt-4 mt-lg-0 d-flex">
         <div class="card phone flex-row flex-fill">
            <i class="bx bxs-phone bx-flip-horizontal align-self-center mr-3"></i>
            <div>
               <h4 class="mb-0">Call:</h4>
               <p><a href="tel:{{globals.contact_phone}}">{{globals.contact_phone}}</a></p>
            </div>
         </div>
      </div>
   </div>
   <div class="row cards">
      <div class="col-lg-6" data-aos="fade-right" data-aos-delay="100">
         <div class="form-title" >
            <h3>Send us a message!</h3>
         </div>
         <div class="card h-auto" id="contact-wrap">
               <form id="submitForm" action="/validate.html" method="POST" enctype="multipart/form-data" class="php-email-form needs-validation">
                  <input type="hidden" name="zlf" value="Contact Form {{contact.first().title}}">
                     <input name="zcf" value="1" type="hidden">
                  <input type="hidden" name="{{setting.contact-form.honeypot}}" value="">
                  <div class="form-row">
                     <div class="col-md-6 form-group">
                        <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                        <div class="validate"></div>
                     </div>
                     <div class="col-md-6 form-group">
                        <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                        <div class="validate"></div>
                     </div>
                  </div>
                  <div class="form-group">
                     <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                     <div class="validate"></div>
                  </div>
                  <div class="form-group">
                     <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                     <div class="validate"></div>
                  </div>
                  <div class="mb-3">
                     <div class="loading">Loading</div>
                     <div class="error-message">There was a problem with the form. Please try again.</div>
                     <div class="sent-message">Your form has been submitted. Thank you!</div>
                  </div>
                  <div class="text-center"><button type="submit" id="submit">Send Message</button></div>
               </form>
            </div>
         </div>
      <div class="col-lg-6 mt-5 mt-lg-0" data-aos="fade-left" data-aos-delay="100">
         <div class="google-map shadow">
            {{contact.first().google_maps_embed}}
         </div>
      </div>
   </div>

               </div>
</section>
<!-- End Contact Section -->
