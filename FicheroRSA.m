# Generacion de claves privada y publica

[p, q, e, d, n, z] = GeneradorClavesRSA();

# Pido al usuario un mensaje de texto de entrada

m = input("Ingrese el mensaje a cifrar: ", "s");

# Cifrado de un mensaje

[c_ASCII] = CifradoRSA(e, n, m);

# Descifrado de un mensaje

m = DescifradoRSA(c_ASCII, d, n);
