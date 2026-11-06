<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Recuperar el parámetro de error enviado por el Servlet
    String error = request.getParameter("error");
    boolean hasError = (error != null && error.equals("true"));
%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Sistema de Tocas</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/css/styles.css">
</head>
<body>
    <div class="split-container">
        <!-- Panel Izquierdo -->
        <div class="left-panel">
            <div class="logo-box">Logo</div>
            <div class="left-content">
                <hr class="divider">
                <h1 class="main-title">Sistema de Seguimiento y<br>Control de Tocas</h1>
                <h3 class="subtitle">Segunda instancia</h3>
                <p class="description">Consulte sus tocas, ponencias y documentos en un solo lugar.</p>
            </div>
            <div class="left-footer">
                <hr class="footer-divider">
                <p>Acceso exclusivo para personal autorizado.<br>
                ¿Tiene problemas para entrar? Contacte al administrador del sistema.</p>
            </div>
        </div>

        <!-- Panel Derecho -->
        <div class="right-panel">
            <div class="login-card">
                <h2 class="form-title">Iniciar sesión</h2>
                <p class="form-subtitle">Bienvenido al Sistema de Seguimiento y Control de Tocas.<br>Para ingresar, escriba su correo electrónico y contraseña.</p>

              <form action="<%= request.getContextPath() %>/LoginServlet" method="POST">
                    <div class="input-group">
                        <label for="email">Correo electrónico</label>
                        <input type="email" id="email" name="email" autocomplete="username"
                               class="<%= hasError ? "input-error" : "" %>" required>
                    </div>

                    <div class="input-group">
                        <label for="password">Contraseña</label>
                        <div class="password-wrapper">
                            <input type="password" id="password" name="password" autocomplete="current-password"
                                   class="<%= hasError ? "input-error" : "" %>" required>
                            <span class="toggle-password" onclick="togglePassword()">Mostrar</span>
                        </div>
                    </div>

                    <!-- Contenedor alineado para el Error y el Enlace -->
                    <div class="form-footer">
                        <% if(hasError) { %>
                        <div class="error-message">
                            <svg class="error-icon" viewBox="0 0 24 24" fill="none" stroke="#d32f2f" stroke-width="2">
                                <circle cx="12" cy="12" r="10"></circle>
                                <line x1="12" y1="8" x2="12" y2="12"></line>
                                <line x1="12" y1="16" x2="12.01" y2="16"></line>
                            </svg>
                            Correo o contraseña incorrectos.
                        </div>
                        <% } else { %>
                        <div></div> <!-- Div vacío para mantener el enlace a la derecha cuando no hay error -->
                        <% } %>

                        <a href="#" class="forgot-link">¿Olvidó su contraseña?</a>
                    </div>

                    <button type="submit" class="btn-submit">Entrar</button>
                </form>
            </div>
        </div>
    </div>
    <script src="<%= request.getContextPath() %>/assets/js/script.js"></script>
</body>
</html>