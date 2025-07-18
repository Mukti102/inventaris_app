  <!--end::App Wrapper-->
  <!--begin::Script-->
  <!--begin::Third Party Plugin(OverlayScrollbars)-->
  <script src="https://cdn.jsdelivr.net/npm/overlayscrollbars@2.10.1/browser/overlayscrollbars.browser.es6.min.js"
      integrity="sha256-dghWARbRe2eLlIJ56wNB+b760ywulqK3DzZYEpsg2fQ=" crossorigin="anonymous"></script>
  <!--end::Third Party Plugin(OverlayScrollbars)--><!--begin::Required Plugin(popperjs for Bootstrap 5)-->
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
      integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous">
  </script>
  <!--end::Required Plugin(popperjs for Bootstrap 5)--><!--begin::Required Plugin(Bootstrap 5)-->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
      integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous">
  </script>
  <!--end::Required Plugin(Bootstrap 5)--><!--begin::Required Plugin(AdminLTE)-->
  <script src="../../dist/js/adminlte.js"></script>
  <!--end::Required Plugin(AdminLTE)--><!--begin::OverlayScrollbars Configure-->
  <script>
      const SELECTOR_SIDEBAR_WRAPPER = '.sidebar-wrapper';
      const Default = {
          scrollbarTheme: 'os-theme-light',
          scrollbarAutoHide: 'leave',
          scrollbarClickScroll: true,
      };
      document.addEventListener('DOMContentLoaded', function() {
          const sidebarWrapper = document.querySelector(SELECTOR_SIDEBAR_WRAPPER);
          if (sidebarWrapper && typeof OverlayScrollbarsGlobal?.OverlayScrollbars !== 'undefined') {
              OverlayScrollbarsGlobal.OverlayScrollbars(sidebarWrapper, {
                  scrollbars: {
                      theme: Default.scrollbarTheme,
                      autoHide: Default.scrollbarAutoHide,
                      clickScroll: Default.scrollbarClickScroll,
                  },
              });
          }
      });
  </script>
  <!--end::OverlayScrollbars Configure-->
  <!-- OPTIONAL SCRIPTS -->
  <!-- sortablejs -->
  <script src="https://cdn.jsdelivr.net/npm/sortablejs@1.15.0/Sortable.min.js"
      integrity="sha256-ipiJrswvAR4VAx/th+6zWsdeYmVae0iJuiR+6OqHJHQ=" crossorigin="anonymous"></script>
  <!-- sortablejs -->
  <script>
      const connectedSortables = document.querySelectorAll('.connectedSortable');
      connectedSortables.forEach((connectedSortable) => {
          let sortable = new Sortable(connectedSortable, {
              group: 'shared',
              handle: '.card-header',
          });
      });

      const cardHeaders = document.querySelectorAll('.connectedSortable .card-header');
      cardHeaders.forEach((cardHeader) => {
          cardHeader.style.cursor = 'move';
      });
  </script>
  
  <!-- jsvectormap -->
  <script src="https://cdn.jsdelivr.net/npm/jsvectormap@1.5.3/dist/js/jsvectormap.min.js"
      integrity="sha256-/t1nN2956BT869E6H4V1dnt0X5pAQHPytli+1nTZm2Y=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/jsvectormap@1.5.3/dist/maps/world.js"
      integrity="sha256-XPpPaZlU8S/HWf7FZLAncLg2SAkP8ScUTII89x9D3lY=" crossorigin="anonymous"></script>
  <!-- jsvectormap -->
  <script>
      const visitorsData = {
          US: 398, // USA
          SA: 400, // Saudi Arabia
          CA: 1000, // Canada
          DE: 500, // Germany
          FR: 760, // France
          CN: 300, // China
          AU: 700, // Australia
          BR: 600, // Brazil
          IN: 800, // India
          GB: 320, // Great Britain
          RU: 3000, // Russia
      };

      // World map by jsVectorMap
      const map = new jsVectorMap({
          selector: '#world-map',
          map: 'world',
      });

      // Sparkline charts
      const option_sparkline1 = {
          series: [{
              data: [1000, 1200, 920, 927, 931, 1027, 819, 930, 1021],
          }, ],
          chart: {
              type: 'area',
              height: 50,
              sparkline: {
                  enabled: true,
              },
          },
          stroke: {
              curve: 'straight',
          },
          fill: {
              opacity: 0.3,
          },
          yaxis: {
              min: 0,
          },
          colors: ['#DCE6EC'],
      };

      const sparkline1 = new ApexCharts(document.querySelector('#sparkline-1'), option_sparkline1);
      sparkline1.render();

      const option_sparkline2 = {
          series: [{
              data: [515, 519, 520, 522, 652, 810, 370, 627, 319, 630, 921],
          }, ],
          chart: {
              type: 'area',
              height: 50,
              sparkline: {
                  enabled: true,
              },
          },
          stroke: {
              curve: 'straight',
          },
          fill: {
              opacity: 0.3,
          },
          yaxis: {
              min: 0,
          },
          colors: ['#DCE6EC'],
      };

      const sparkline2 = new ApexCharts(document.querySelector('#sparkline-2'), option_sparkline2);
      sparkline2.render();

      const option_sparkline3 = {
          series: [{
              data: [15, 19, 20, 22, 33, 27, 31, 27, 19, 30, 21],
          }, ],
          chart: {
              type: 'area',
              height: 50,
              sparkline: {
                  enabled: true,
              },
          },
          stroke: {
              curve: 'straight',
          },
          fill: {
              opacity: 0.3,
          },
          yaxis: {
              min: 0,
          },
          colors: ['#DCE6EC'],
      };

      const sparkline3 = new ApexCharts(document.querySelector('#sparkline-3'), option_sparkline3);
      sparkline3.render();
  </script>

  {{-- jQuery --}}
  <script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>

  {{-- DataTables CSS with Bootstrap 4 --}}
  <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap4.min.css">

  {{-- DataTables core JS --}}
  <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>

  {{-- DataTables Bootstrap 4 integration JS (PENTING) --}}
  <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap4.min.js"></script>



  <script>
  $(document).ready(function () {
    $('table').each(function () {
      $(this).DataTable({
        responsive: true,
        language: {
          url: "//cdn.datatables.net/plug-ins/1.13.6/i18n/id.json"
        }
      });
    });
  });
</script>
<!-- SweetAlert2 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
document.addEventListener('DOMContentLoaded', () => {
    document.addEventListener('click', function (e) {
        const target = e.target.closest('[data-confirm-delete]');
        if (!target) return;

        e.preventDefault();

        const form = target.tagName === 'FORM' ? target : target.closest('form');

        if (!form) return;

        Swal.fire({
            title: 'Yakin ingin menghapus?',
            text: "Data yang dihapus tidak dapat dikembalikan!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#d33',
            cancelButtonColor: '#6c757d',
            confirmButtonText: 'Ya, hapus!',
            cancelButtonText: 'Batal'
        }).then((result) => {
            if (result.isConfirmed) {
                form.submit();
            }
        });
    });
});
</script>


  <!--end::Script-->
