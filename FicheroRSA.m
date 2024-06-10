# Generacion de claves privada y publica

[p, q, e, d, n, z] = GeneradorClavesRSA();

# Cifrado de un mensaje

[c_ASCII] = CifradoRSA(e,n);

# Descifrado de un mensaje

[m] = DescifradoRSA(c_ASCII, d, n);
