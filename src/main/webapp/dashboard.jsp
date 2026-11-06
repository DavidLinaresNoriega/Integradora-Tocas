<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio - SSCT (Segunda Instancia)</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/dashboard-styles.css?v=7">
</head>
<body>
    <!-- Contenedor general que unifica el fondo y la barra superior flotante -->
    <div class="header-banner-container">
        <img src="<%= request.getContextPath() %>/assets/images/Fondo2.png" alt="" class="global-bg-img" aria-hidden="true">
        <!-- Barra de Navegación Tipo Cápsula Flotante (Exacta a Figma) -->
        <header class="navbar">
            <div class="nav-brand">
                <div class="logo-box">Logo</div>
                <div class="brand-text">
                    <span class="brand-title">SSCT</span>
                    <span class="brand-subtitle">Segunda instancia</span>
                </div>
            </div>

            <nav class="nav-links">
                <a href="dashboard.jsp" class="nav-item active">Inicio</a>
                <a href="tocas.jsp" class="nav-item">Mis tocas</a>
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
            <h1 class="welcome-title">Buenos días, Ricardo</h1>
            <p class="welcome-desc">Este es el resumen de sus tocas, ponencias y avisos.</p>
        </div>
    </div>

    <!-- Contenido Principal (Tarjetas y Paneles) -->
    <main class="main-container">
        <!-- Tarjetas de Métricas -->
        <section class="metrics-grid">
            <div class="metric-card">
                <span class="metric-number">36</span>
                <span class="metric-label">Tocas asignadas</span>
            </div>
            <div class="metric-card">
                <span class="metric-number">5</span>
                <span class="metric-label">Ponencias en 15 días</span>
            </div>
            <div class="metric-card">
                <span class="metric-number">1</span>
                <span class="metric-label">Resolución en borrador</span>
            </div>
            <div class="metric-card">
                <span class="metric-number">2</span>
                <span class="metric-label">Avisos sin leer</span>
            </div>
        </section>

        <!-- Contenedor en Dos Columnas -->
        <div class="dashboard-grid">
            <!-- Panel Izquierdo: Próximas Ponencias -->
            <section class="panel">
                <h2 class="panel-title">Próximas ponencias</h2>

                <div class="ponencia-list">
                    <!-- Item 1 -->
                    <div class="ponencia-card">
                        <div class="date-box">
                            <span class="day">26</span>
                            <span class="month">OCT</span>
                        </div>
                        <div class="ponencia-details">
                            <div class="ponencia-header">
                                <span class="toca-code">T-000418/2026</span>
                                <span class="badge">Próxima</span>
                            </div>
                            <p class="juzgado">Juzgado de Zapata</p>
                            <p class="partes">Paloma vs Alejandro</p>
                        </div>
                        <svg class="arrow-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M9 18l6-6-6-6"/></svg>
                    </div>

                    <!-- Item 2 -->
                    <div class="ponencia-card">
                        <div class="date-box">
                            <span class="day">27</span>
                            <span class="month">OCT</span>
                        </div>
                        <div class="ponencia-details">
                            <div class="ponencia-header">
                                <span class="toca-code">T-000391/2026</span>
                                <span class="badge">Próxima</span>
                            </div>
                            <p class="juzgado">Juzgado 2.° Civil</p>
                            <p class="partes">Canelo Álvarez vs Gilberto Mora</p>
                        </div>
                        <svg class="arrow-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M9 18l6-6-6-6"/></svg>
                    </div>

                    <!-- Item 3 -->
                    <div class="ponencia-card">
                        <div class="date-box">
                            <span class="day">29</span>
                            <span class="month">OCT</span>
                        </div>
                        <div class="ponencia-details">
                            <div class="ponencia-header">
                                <span class="toca-code">T-000402/2026</span>
                                <span class="badge">Próxima</span>
                            </div>
                            <p class="juzgado">Juzgado de Cuautla</p>
                            <p class="partes">Lian Joel vs Ángel Rafael</p>
                        </div>
                        <svg class="arrow-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M9 18l6-6-6-6"/></svg>
                    </div>

                    <!-- Item 4 -->
                    <div class="ponencia-card">
                        <div class="date-box">
                            <span class="day">03</span>
                            <span class="month">NOV</span>
                        </div>
                        <div class="ponencia-details">
                            <div class="ponencia-header">
                                <span class="toca-code">T-000377/2026</span>
                                <span class="badge">Próxima</span>
                            </div>
                            <p class="juzgado">Juzgado 3.º Civil</p>
                            <p class="partes">Alonso Caleb vs Alexis Arriola</p>
                        </div>
                        <svg class="arrow-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M9 18l6-6-6-6"/></svg>
                    </div>
                </div>

                <button class="btn-outline">Ver agenda</button>
            </section>

            <!-- Panel Derecho: Avisos Recientes -->
            <section class="panel avisos-panel">
                <h2 class="panel-title">Avisos recientes</h2>

                <div class="avisos-list">
                    <!-- Aviso 1 -->
                    <div class="aviso-item highlight">
                        <div class="aviso-icon">
                            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                        </div>
                        <div class="aviso-content">
                            <h4>Ponencia agendada</h4>
                            <p>La ponencia de la toca T-000391/2026 fue agendada para el 27/10/2026.</p>
                            <span class="aviso-time">24/10/2026 · 08:30</span>
                        </div>
                    </div>

                    <!-- Aviso 2 -->
                    <div class="aviso-item highlight">
                        <div class="aviso-icon">
                            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"></circle><polyline points="12 6 12 12 16 14"></polyline></svg>
                        </div>
                        <div class="aviso-content">
                            <h4>Ponencia próxima</h4>
                            <p>La ponencia de la toca T-000418/2026 es en 3 días (26/10/2026).</p>
                            <span class="aviso-time">23/10/2026 · 12:10</span>
                        </div>
                    </div>

                    <!-- Aviso 3 -->
                    <div class="aviso-item">
                        <div class="aviso-icon">
                            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path><polyline points="14 2 14 8 20 8"></polyline><line x1="12" y1="18" x2="12" y2="12"></line><line x1="9" y1="15" x2="15" y2="15"></line></svg>
                        </div>
                        <div class="aviso-content">
                            <h4>Nueva toca asignada a su sala</h4>
                            <p>Toca T-000418/2026 · Paloma vs Alejandro · Juzgado de Zapata</p>
                            <span class="aviso-time">05/10/2026 · 09:24</span>
                        </div>
                    </div>

                    <!-- Aviso 4 -->
                    <div class="aviso-item">
                        <div class="aviso-icon">
                            <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M22 19a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h5l2 3h9a2 2 0 0 1 2 2z"></path></svg>
                        </div>
                        <div class="aviso-content">
                            <h4>Expediente recibido de Oficialía de Partes</h4>
                            <p>Toca T-000402/2026 · Lian Joel vs Ángel Rafael · Juzgado de Cuautla</p>
                            <span class="aviso-time">05/10/2026 · 09:15</span>
                        </div>
                    </div>
                </div>

                <button class="btn-outline">Ver todos los avisos</button>
            </section>
        </div>
    </main>
</body>
</html>