
<!-- ======= Top Bar ======= -->
<div id="topbar" class="d-none d-lg-flex align-items-center fixed-top ">
  <div class="container d-flex align-items-center">
    <div class="contact-info mr-auto d-flex align-items-center">
      <ul class="d-flex">
        {{if {globals.contact_email} }}<li class="d-flex flex-direction-column align-items-center"><i class="icofont-envelope"></i><a href="mailto:{{globals.contact_email}}"> {{globals.contact_email}}</a></li>{{end-if}}
        {{if {globals.contact_phone} }}<li class="d-flex flex-direction-column align-items-center"><i class="icofont-phone"></i><a href="tel:{{globals.contact_phone}}"> {{globals.contact_phone}}</a></li>{{end-if}}
        {{if {globals.hours} }}<li class="d-flex flex-direction-column align-items-center white-space-break"><i class="icofont-clock-time"></i>{{globals.hours}}</li>{{end-if}}
      </ul>
    </div>
    <div class="social-links mr-auto">
      {{ if {globals.facebook} != ' ' }}<a href="{{globals.facebook}}" class="facebook"><i class="bx bxl-facebook"></i><span class="sr-only sr-only-focusable">Facebook</span></a>{{end-if}}
      {{ if {globals.instagram} != ' ' }}<a href="{{globals.instagram}}" class="instagram"><i class="bx bxl-instagram"></i><span class="sr-only sr-only-focusable">Instagram</span></a>{{end-if}}
     {{ if {globals.twitter} != ' '}} <a href="{{globals.twitter}}" class="twitter"><i class="bx bxl-twitter"></i><span class="sr-only sr-only-focusable">Twitter</span></a>{{end-if}}
    </div>
    <div class="request">
      <a href="{{globals.appointments_link}}" class="scrollto btn btn-info" target="_blank"><i class="bx bx-calendar d-none d-xl-inline"></i>Request Appointment</a>
    </div>
  </div>
</div>

<!-- ======= Header ======= -->
<header id="header" class="fixed-top ">
  <div class="container d-flex align-items-center justify-content-end position-relative">

    <div class="logo mr-auto"><a href="/" class="scrollto"><img src="{{globals.logo.getImage()}}" alt="Logo Image"/></a></div>
    <!-- Uncomment below if you prefer to use an image logo -->
    <!-- <a href="#header" class="logo mr-auto scrollto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

		<nav class="nav-menu d-none d-lg-block">
      <ul>
        {{each navigation as nav where nav.parent_nav_item = 0 sort by sort_order}}
        {{$dropdown = 0 }}
        {{each navigation as child where child.parent_nav_item = '{nav.zuid}' limit 1 }}
        {{$dropdown = 1 }}
        {{end-each}}
        <li {{if {nav.internal_link} == '{this.zuid}'}}class="active"{{end-if}} {{if {$dropdown} }}class="drop-down"{{end-if}}><a href="{{if {nav.internal_link} }}{{truepath({nav.internal_link})}}{{else}}{{nav.external_url}}{{end-if}}">{{nav.title}}</a>
        {{if {$dropdown} = 0 }}</li>{{else}}
          <ul>
            {{each navigation as child where child.parent_nav_item = '{nav.zuid}' sort by sort_order }}
            <li><a href="{{if {child.internal_link} }}{{truepath({child.internal_link})}}{{else}}{{child.external_url}}{{end-if}}">{{child.title}}</a></li>
            {{end-each}}
            </ul>
            </li>
        {{end-if}}
        {{end-each}}
      
      </ul>
    </nav><!-- .nav-menu -->

  </div>
</header><!-- End Header -->
