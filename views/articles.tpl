<main id="main">
      {{include breadcrumbs}}
  <!-- ======= Blog Section ======= -->
  <section id="blog" class="blog">
    <div class="container">

      <div class="row">

        <div class="col-lg-8 entries">

          <article class="entry entry-single">

            <div class="entry-img">
              <img src="{{this.image.getImage()}}" alt="{{this.image_alt}}" class="img-fluid">
            </div>

            <h2 class="entry-title">{{this.title}}</h2>

            <div class="entry-meta">
              <ul>
                <li class="d-flex align-items-center"><i class="icofont-wall-clock"></i> <a href="blog-single.html"><time datetime="{{this.date.date(Y-m-d)}}">{{this.date.date(M d, Y)}}</time></a></li>
              </ul>
            </div>

            <div class="entry-content">
              {{this.content}}
            </div>

            <div class="entry-footer clearfix">
              <div class="float-left">
                <i class="icofont-tags"></i>
                <ul class="tags">
                  {{ each tags as tag where find_in_set(tag.zuid, '{this.tags}') }}
                  <li><a href="{{tag.getUrl()}}">{{tag.title}}</a></li>
                  {{end-each}}
                </ul>
              </div>
            </div>

          </article><!-- End blog entry -->


        </div><!-- End blog entries list -->

        <div class="col-lg-4">

          <div class="sidebar">

            <h3 class="sidebar-title">Recent Posts</h3>
            <div class="sidebar-item recent-posts">
            {{each articles as article where zuid != '{this.zuid}' sort by date DESC limit 5 }}
              <div class="post-item clearfix">
                <img src="{{article.image.getImage(80,60,crop)}}" alt="{{article.image_alt}}">
                <h4><a href="{{article.getUrl()}}">{{article.title}}</a></h4>
                <time datetime="{{article.date(Y-m-d)}}">{{article.date.date(M d, Y)}}</time>
              </div>
            {{end-each}}
            </div><!-- End sidebar recent posts-->

            <h3 class="sidebar-title">Tags</h3>
            <div class="sidebar-item tags">
              <ul>
                {{ each tags as tag where find_in_set(tag.zuid, '{this.tags}') }}
                <li><a href="{{tag.getUrl()}}">{{tag.title}}</a></li>
                {{end-each}}
              </ul>

            </div><!-- End sidebar tags-->

          </div><!-- End sidebar -->

        </div><!-- End blog sidebar -->

      </div>

    </div>
  </section><!-- End Blog Section -->

</main><!-- End #main -->
