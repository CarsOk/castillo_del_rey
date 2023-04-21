login = async()=> {
    await fetch("Login.json")
    .then(function (response) {
      return response.json();
    })
    .then(function (usuarios){
      const user = document.getElementById("correo").value;
      const pass = document.getElementById("Clave").value;
      console.log("entro");
  
      for (let i = 0; i < usuarios.usuarios.length; i++) {
        if (usuarios.usuarios[i].usuario=== user && usuarios.usuarios[i].contrasena === pass) {
          console.log("entro2");
          window.location.href = "/CASTILLO_DEL_REY/script_interfaces_proyecto/HTML/Menu_principal_admin.html";
          console.log("entro3");
          return;
        }
      }
  
      console.log("entro4");
      alert("Usuario o contraseña incorrecta.");
    })
    .catch(error => console.error(error));
  }
  