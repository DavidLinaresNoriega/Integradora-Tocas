<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mis tocas - SSCT</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/tocas-styles.css?v=1">
</head>
<body>
    <!-- Contenedor general (Banner + Navbar) -->
    <div class="header-banner-container">
        <img src="<%= request.getContextPath() %>/assets/images/Fondo2.png" alt="Fondo decorativo" class="global-bg-img">

        <header class="navbar">
            <div class="nav-brand">
                <div class="logo-box">Logo</div>
                <div class="brand-text">
                    <span class="brand-title">SSCT</span>
                    <span class="brand-subtitle">Segunda instancia</span>
                </div>
            </div>

            <nav class="nav-links">
                <a href="dashboard.jsp" class="nav-item">Inicio</a>
                <a href="tocas.jsp" class="nav-item active">Mis tocas</a>
                <a href="#" class="nav-item">Agenda</a>
                <a href="#" class="nav-item">Notificaciones</a>
            </nav>

            <div class="user-profile">
                <div class="user-avatar">
                    <svg viewBox="0 0 24 24" fill="currentColor"><path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/></svg>
                </div>
                <div class="user-info">
                    <span class="user-name">Ricardo Salgado</span>
                    <span class="user-role">Magistrado</span>
                </div>
                <svg class="dropdown-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M6 9l6 6 6-6"/></svg>
            </div>
        </header>

        <!-- Sección de Bienvenida -->
        <div class="welcome-container">
            <h1 class="welcome-title">Mis tocas</h1>
            <p class="welcome-desc">Aquí puede consultar y gestionar las tocas asignadas a su sala.</p>
        </div>
    </div>

    <!-- Contenido Principal: Filtros y Tabla -->
    <main class="main-container tocas-container">

        <!-- Barra de Filtros en una sola línea -->
        <div class="filters-bar">
            <div class="filter-search">
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
                <input type="text" id="inputBusqueda" placeholder="Buscar por toca, juzgado o partes">
            </div>

            <!-- Selector de Estado -->
            <select id="filtroEstado" class="filter-select" onchange="aplicarFiltros()">
                <option value="">Estado: Todos</option>
                <option value="nueva">Nueva</option>
                <option value="en revisión">En revisión</option>
                <option value="resuelta">Resuelta</option>
            </select>

            <!-- Selector de Fechas -->
            <select id="filtroFecha" class="filter-select" onchange="aplicarFiltros()">
                <option value="">Fechas: Todas</option>
                <option value="oct. 2026">Octubre 2026</option>
                <option value="nov. 2026">Noviembre 2026</option>
                <option value="sep. 2026">Septiembre 2026</option>
            </select>

            <div class="filter-actions">
                <a href="#" class="btn-clear" onclick="limpiarFiltros(); return false;">Limpiar filtros</a>
                <button class="btn-apply" onclick="aplicarFiltros()">
                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polygon points="22 3 2 3 10 12.46 10 19 14 21 14 12.46 22 3"></polygon></svg>
                    Aplicar filtros
                </button>
            </div>
        </div>

        <!-- Panel de la Tabla de Expedientes -->
        <section class="table-panel">
            <div class="table-panel-header">
                <div>
                    <h2 class="table-panel-title">EXPEDIENTES ASIGNADOS</h2>
                    <p class="table-panel-desc">Consulta y seguimiento de las tocas de su sala.</p>
                </div>
                <!-- El contador cambiará dinámicamente -->
                <span class="record-count">36 registros</span>
            </div>

            <div class="table-responsive">
                <table class="data-table">
                    <thead>
                        <tr>
                            <th>TOCA</th>
                            <th>PARTES</th>
                            <th>FECHAS</th>
                            <th>ESTADO</th>
                            <th>ACCIONES</th>
                        </tr>
                    </thead>
                    <tbody id="cuerpoTabla">
                        <!-- Fila 1 -->
                        <tr>
                            <td>
                                <div class="td-main">T-000418/2026</div>
                                <div class="td-sub">Juzgado de Zapata</div>
                            </td>
                            <td>
                                <div class="td-main">Paloma</div>
                                <div class="td-sub">vs. Alejandro</div>
                            </td>
                            <td>
                                <div class="td-main">26 oct. 2026</div>
                                <div class="td-sub">Recepción: 02 oct. 2026</div>
                            </td>
                            <td>
                                <span class="badge-status status-nueva"><i></i>Nueva</span>
                            </td>
                            <td>
                                <button class="btn-icon">
                                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="12" r="3"></circle></svg>
                                    Ver
                                </button>
                            </td>
                        </tr>
                        <!-- Fila 2 -->
                        <tr>
                            <td>
                                <div class="td-main">T-000391/2026</div>
                                <div class="td-sub">Juzgado 2.° Civil</div>
                            </td>
                            <td>
                                <div class="td-main">Canelo Álvarez</div>
                                <div class="td-sub">vs. Gilberto Mora</div>
                            </td>
                            <td>
                                <div class="td-main">27 oct. 2026</div>
                                <div class="td-sub">Recepción: 28 sep. 2026</div>
                            </td>
                            <td>
                                <span class="badge-status status-nueva"><i></i>Nueva</span>
                            </td>
                            <td>
                                <button class="btn-icon">
                                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="12" r="3"></circle></svg>
                                    Ver
                                </button>
                            </td>
                        </tr>
                        <!-- Fila 3 -->
                        <tr>
                            <td>
                                <div class="td-main">T-000402/2026</div>
                                <div class="td-sub">Juzgado de Cuautla</div>
                            </td>
                            <td>
                                <div class="td-main">Lian Joel</div>
                                <div class="td-sub">vs. Ángel Rafael</div>
                            </td>
                            <td>
                                <div class="td-main">29 oct. 2026</div>
                                <div class="td-sub">Recepción: 05 oct. 2026</div>
                            </td>
                            <td>
                                <span class="badge-status status-nueva"><i></i>Nueva</span>
                            </td>
                            <td>
                                <button class="btn-icon">
                                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="12" r="3"></circle></svg>
                                    Ver
                                </button>
                            </td>
                        </tr>
                        <!-- Fila 4 -->
                        <tr>
                            <td>
                                <div class="td-main">T-000377/2026</div>
                                <div class="td-sub">Juzgado 3.º Civil</div>
                            </td>
                            <td>
                                <div class="td-main">Alonso Caleb</div>
                                <div class="td-sub">vs. Alexis Arriola</div>
                            </td>
                            <td>
                                <div class="td-main">03 nov. 2026</div>
                                <div class="td-sub">Recepción: 21 sep. 2026</div>
                            </td>
                            <td>
                                <span class="badge-status status-nueva"><i></i>Nueva</span>
                            </td>
                            <td>
                                <button class="btn-icon">
                                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="12" r="3"></circle></svg>
                                    Ver
                                </button>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <!-- Estado Vacío (Oculto por defecto) -->
                <div id="estadoVacio" class="empty-state" style="display: none;">
                    <div class="empty-icon-circle">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
                    </div>
                    <h3>No hay tocas con esos filtros</h3>
                    <p>Pruebe con otro número de toca, juzgado o parte, o limpie los filtros.</p>
                    <button class="btn-empty-clear" onclick="limpiarFiltros()">Limpiar filtros</button>
                </div>
            </div>

            <!-- Paginación Interactiva -->
                        <div class="pagination-footer">
                            <span id="paginationInfo" class="pagination-info">Mostrando 1-4 de 36</span>
                            <div id="paginationControls" class="pagination-controls">
                                <button class="page-arrow" onclick="cambiarPagina('prev')"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M15 18l-6-6 6-6"/></svg></button>
                                <button id="btnPage1" class="page-number active" onclick="irAPagina(1)">1</button>
                                <button id="btnPage2" class="page-number" onclick="irAPagina(2)">2</button>
                                <span class="page-dots">...</span>
                                <button id="btnPage9" class="page-number" onclick="irAPagina(9)">9</button>
                                <button class="page-arrow" onclick="cambiarPagina('next')"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M9 18l6-6-6-6"/></svg></button>
                            </div>
                        </div>
        </section>

    </main>

    <script>
            // Variables de control de paginación
            let paginaActual = 1;
            const totalPaginas = 9;

            function aplicarFiltros() {
                let inputTexto = document.getElementById("inputBusqueda").value.toLowerCase();
                let filtroEstado = document.getElementById("filtroEstado").value.toLowerCase();
                let filtroFecha = document.getElementById("filtroFecha").value.toLowerCase();

                let tbody = document.getElementById("cuerpoTabla");
                let filas = tbody.getElementsByTagName("tr");
                let estadoVacio = document.getElementById("estadoVacio");
                let paginationWrapper = document.getElementById("paginationControls");

                let registrosVisibles = 0;

                for (let i = 0; i < filas.length; i++) {
                    let celdas = filas[i].getElementsByTagName("td");

                    if (celdas.length > 0) {
                        let textoFilaCompleta = filas[i].textContent.toLowerCase();
                        let textoFechas = celdas[2].textContent.toLowerCase();
                        let textoEstado = celdas[3].textContent.toLowerCase();

                        let coincideTexto = inputTexto === "" || textoFilaCompleta.includes(inputTexto);
                        let coincideEstado = filtroEstado === "" || textoEstado.includes(filtroEstado);
                        let coincideFecha = filtroFecha === "" || textoFechas.includes(filtroFecha);

                        // Si estamos en la página 1 mostramos las filas reales, en páginas 2+ simulamos que están vacías o en otra porción
                        let coincidePagina = (paginaActual === 1);

                        if (coincideTexto && coincideEstado && coincideFecha && coincidePagina) {
                            filas[i].style.display = "";
                            registrosVisibles++;
                        } else {
                            filas[i].style.display = "none";
                        }
                    }
                }

                // Control visual si la página o el filtro no arrojan resultados
                if (registrosVisibles === 0) {
                    estadoVacio.style.display = "flex";
                    document.querySelector('.record-count').textContent = "0 registros";
                    document.getElementById('paginationInfo').textContent = "Mostrando 0 de 36";
                } else {
                    estadoVacio.style.display = "none";
                    let inicio = (paginaActual - 1) * 4 + 1;
                    let fin = Math.min(paginaActual * 4, 36);
                    document.querySelector('.record-count').textContent = "36 registros";
                    document.getElementById('paginationInfo').textContent = "Mostrando " + inicio + "-" + fin + " de 36";
                }

                actualizarBotonesPaginacion();
            }

            // Funciones para cambiar de página al hacer clic
            function irAPagina(num) {
                paginaActual = num;
                aplicarFiltros();
            }

            function cambiarPagina(direccion) {
                if (direccion === 'next' && paginaActual < totalPaginas) {
                    paginaActual++;
                } else if (direccion === 'prev' && paginaActual > 1) {
                    paginaActual--;
                }
                aplicarFiltros();
            }

            // Resalta visualmente el número de página activo
            function actualizarBotonesPaginacion() {
                document.querySelectorAll('.page-number').forEach(btn => {
                    btn.classList.remove('active');
                    if (parseInt(btn.textContent) === paginaActual) {
                        btn.classList.add('active');
                    }
                });
            }

            function limpiarFiltros() {
                document.getElementById("inputBusqueda").value = "";
                document.getElementById("filtroEstado").value = "";
                document.getElementById("filtroFecha").value = "";
                paginaActual = 1;
                aplicarFiltros();
            }

            document.getElementById("inputBusqueda").addEventListener("keyup", function() {
                paginaActual = 1; // Regresa a la pág 1 al buscar
                aplicarFiltros();
            });
        </script>
</body>
</html>