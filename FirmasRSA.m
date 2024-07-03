# Emisor

# Generacion de claves privada y publica

[p, q, e, d, n, z] = GeneradorClavesRSA();

# Pido al usuario un mensaje de texto de entrada

m = input("Ingrese el mensaje a cifrar: ", "s");

# Hago pasar el mensaje a través de un algoritmo de hashing SHA256 para calcular el message digest
# El algoritmo de hashing es arbitrario (podría elegir MD5 tambien)

m_digest = hash("sha256", m);

# Luego hago el cifrado del message digest con la clave privada de la entidad

firma = CifradoRSA(d, n, m_digest);

# Receptor

# Aplico la clave publica del emisor para obtener el hash original

digest_recuperado = DescifradoRSA(firma, e, n);

