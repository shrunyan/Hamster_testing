<!-- ======= Footer ======= -->
<footer id="footer">

  <div class="footer-newsletter">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
  			<h4>Our Newsletter</h4>
  			<p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
		</div>
		<div class="col-lg-6  contact">
         <form id="newsletterForm" action="/validate.html" method="post" class="php-email-form needs-validation d-flex align-items-center justify-content-between">
          <input type="hidden" name="zlf" value="Newsletter Signup">
          <input name="zcf" value="1" type="hidden">
           <div class="col-md-6 form-group mb-0 pb-0">
            <input type="email" class="form-control" name="email" id="email_" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                        <div class="validate"></div>
             </div>

           <button type="submit" id="submit">Sign Up</button>
            <div class="form-msg">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
          </form>
		</div>
      </div>
    </div>
  </div>

  <div class="footer-top">
    <div class="container">
      <div class="row">

        <div class="col-lg-3 col-md-6 footer-links">
          <h4>Useful Links</h4>
          <ul>
            {{each navigation as nav where nav.parent_nav_item = 0 sort by sort_order}}
            <li><i class="bx bx-chevron-right"></i> <a href="{{if {nav.external_url} }}{{nav.external_link}}{{else}}{{truepath({nav.internal_link})}}{{end-if}}">{{nav.title}}</a></li>
            {{end-each}}
          </ul>
        </div>

        <div class="col-lg-3 col-md-6 footer-links">
          <h4>Our Services</h4>
          <ul>
            {{each services as service limit 5 sort by sort_order}}
            <li><i class="bx bx-chevron-right"></i> <a href="{{our_services.first().getUrl()}}">{{service.title}}</a></li>
            {{end-each}}
            <li><i class="bx bx-chevron-right"></i> <a href="{{our_services.first().getUrl()}}">See More</a></li>
          </ul>
        </div>

        <div class="col-lg-3 col-md-6 footer-contact">
          <h4>Contact Us</h4>
          <p class="white-space-break">{{globals.address}}</p>
          <p><strong>Phone:</strong><a class="text-white" href="tel:{{globals.contact_phone}}"> {{globals.contact_phone}}</a></p>
          <p><strong>Email:</strong><a class="text-white" href="mailto:{{globals.contact_email}}"> {{globals.contact_email}}</a></p>

        </div>

        <div class="col-lg-3 col-md-6 footer-info">
          <h3>About Hamster</h3>
          {{about.first().content.subWords(19)}}...<a class="text-primary" href="{{about.first().getUrl()}}">Learn More</a>
          <div class="social-links mt-3">
            {{ if {globals.facebook} != ' ' }}<a class="shadow" href="{{globals.facebook}}" class="facebook"><i class="bx bxl-facebook"></i></a>{{end-if}}
            {{ if {globals.instagram} != ' ' }}<a class="shadow" href="{{globals.instagram}}" class="instagram"><i class="bx bxl-instagram"></i></a>{{end-if}}
     {{ if {globals.twitter} != ' '}} <a class="shadow" href="{{globals.twitter}}" class="twitter"><i class="bx bxl-twitter"></i></a>{{end-if}}
          </div>
        </div>

      </div>
    </div>
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Hamster</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/Hamster-free-multipurpose-one-page-bootstrap-theme/ -->
        Designed by <a href="https://zesty.io/">Zesty.io</a>
      </div>
    </div>
  </div>

</footer><!-- End Footer -->

<a href="#" class="back-to-top"><i class="ri-arrow-up-line shadow"></i></a>
<div id="preloader"></div>
