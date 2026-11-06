function togglePassword() {
    const passwordInput = document.getElementById("password");
    const toggleBtn = document.querySelector(".toggle-password");
    
    if (passwordInput.type === "password") {
        passwordInput.type = "text";
        toggleBtn.textContent = "Ocultar"; // Opcional, o mantener "Mostrar"
    } else {
        passwordInput.type = "password";
        toggleBtn.textContent = "Mostrar";
    }
}