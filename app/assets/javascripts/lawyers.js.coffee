jQuery ->
  dTable = $('#lawyers').dataTable()
    iDisplayLength: 50
    sDom: "<'row-fluid'<'span3'l><'span9'f>r>t<'row-fluid'<'span3'i><'span9 pull-right'p>>"
    sPaginationType: "bootstrap"
    oLanguage: { sLengthMenu: "_MENU_ Records per page" }

