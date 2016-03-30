<!DOCTYPE html>
<html>
    <head>
    <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>

            <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
            <script type="text/javascript">
              google.charts.load("current", {packages:["corechart"]});
              google.charts.setOnLoadCallback(drawChart);



              function drawChart() {
                var data1 = google.visualization.arrayToDataTable([
                  ['Task', 'Total'],
                  ['Homem',     11],
                  ['Mulher',     4]
                ]);

                var options1 = {
                  title: 'Índice sexo',
                  is3D: true,
                };

                var chart1 = new google.visualization.PieChart(document.getElementById('sexo'));
                chart1.draw(data1, options1);

                var data2 = google.visualization.arrayToDataTable([
                  ['Task', 'Total'],
                  ['Maior de 18',     9],
                  ['Menor de 18',      6]
                ]);

                var options2 = {
                  title: 'Índice Maioridade',
                  is3D: true,
                };

                var chart2 = new google.visualization.PieChart(document.getElementById('idade'));
                chart2.draw(data2, options2);

                var data3 = google.visualization.arrayToDataTable([
                  ['Task', 'Total'],
                  ['Casaodo(a)',     6],
                  ['Solteiro(a)',      7],
                  ['Viúvo(a)',  2],
                ]);

                var options3 = {
                  title: 'Índice Estado Civil',
                  is3D: true,
                };

                var chart3 = new google.visualization.PieChart(document.getElementById('estado'));
                chart3.draw(data3, options3);
              }
            </script>

        
    </head>
    <body>
        <a href="#list-pessoa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-pessoa" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${pessoaList}" />

            <div class="pagination">
                <g:paginate total="${pessoaCount ?: 0}" />
            </div>
            <div id="container">
                <div id="sexo" style="float: left; width: 30%; height: 30%;"></div>
                <div id="idade" style="float: left; width: 30%; height: 30%;"></div>
                <div id="estado" style="float: left; width: 30%; height: 30%;"></div>
            </div>
        </div>
    </body>
</html>