class Rutas {
  /*
  * Routes Users and Login
  *
  */
  final String login = "/auth";
  final String register = "/auth/register";
  final String passwordRecovery = "/recuperar_contrasenia";
  final String renewToken = "/renew-token";

  /*
  * Routes Airbox
  *
  */
  final String paquetesEntregados = "/paquetes_entregados";
  final String paquetesPendientes = "/paquetes_pendientes";
  final String rastreoPaquete = "/rastreo_paquete";
  final String rastreoTracking = "/rastreo_tracking";
  final String infoCliente = "/info_cliente";
  final String entregas = "/entregas";
  final String registrarEntrega = "/registrar_entrega";
  final String actualizarCliente = "/actualizar_cliente";
  final String cambiarContrasenia = "/cambiar_contrasenia";
  final String receptorNoDisponible = "/receptor_no_disponible";
  final String agregarPrealerta = "/prealerta/add";
  final String listarPrealerta = "/prealerta/list";
  final String testEnviarMail = "/test/enviar_mail";
  final String testEnviarMailRegistro = "/test/enviar_mail_registro";
}
