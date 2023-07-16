import os
import qrcode

# Texto o URL para generar el código QR
texto = "https://www.oihanejavi.com"

# Obtener la ruta absoluta del directorio actual
directorio_actual = os.path.abspath(os.path.dirname(__file__))

# Generar el código QR
qr = qrcode.QRCode(
    version=1,
    error_correction=qrcode.constants.ERROR_CORRECT_L,
    box_size=10,
    border=4,
)
qr.add_data(texto)
qr.make(fit=True)

# Crear una imagen del código QR
imagen = qr.make_image(fill_color="black", back_color="white")

# Guardar la imagen del código QR en el directorio actual
nombre_archivo = "codigo_qr_oihanejavi.png"
ruta_completa = os.path.join(directorio_actual, nombre_archivo)
imagen.save(ruta_completa)

print("Código QR generado y guardado como", ruta_completa)