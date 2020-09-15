<main id="main">
   {{include breadcrumbs}}
  <!-- ======= Resources Section ======= -->
  <section id="generic-page" class="">
    <div class="container">

      <div class="row">

        <div class="col-lg-12"><div class="main-content">
           <div class="entry-img hero">
              <img src="{{this.image.getImage()}}" alt="{{this.image_alt}}" class="img-fluid">
            </div>
            <div class="content">
              <h2>{{this.title}}</h2>
              {{this.content}}
            </div>
            {{if {this.display_pet_desk_banner} }}
            <div class="entry-img content text-center">
              <img src="{{globals.petdesk_banner.getImage()}}" alt="{{globals.image_alt}}" class="img-fluid">
            </div>
            {{end-if}}
            {{if {this.display_patient_forms} }}
    <div class="content">
      <!-- Table -->
      <h2 class="mb-5">Patient Forms</h2><div class="row">

        <div class="col">
          <div class="card shadow">
            <div class="table-responsive" id="patient-forms">
              <table class="table table-striped align-items-center table-flush">
                <thead class="thead-dark">
                  <tr>
                    <th class="w-25" scope="col">Form</th>
                    <th scope="col">Description</th>
                    <th class="w-25" scope="col">Download File</th>
                  </tr>
                </thead>
                <tbody>
                  {{each online_forms as form sort by sort_order}}
                  <tr>
                    <th scope="row">
                      <div class="align-items-center">
                          <p class="mb-0 text-sm">{{form.title}}</p>
                      </div>
                    </th>
                    <td>
                      <p class="white-space-break">{{form.description}}</p>
                    </td>
                    <td>
                        <a href="{{this.pdf.getImage()}}" target="_blank" class="avatar rounded-circle mr-3">
                          <i class='bx bx-download' ></i> Download
                        </a>
                    </td>
                  </tr>
                  {{end-each}}
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
    {{end-if}}
  </div>
  </div>
      </div>

    </div>
  </section>
</main><!-- End #main -->
