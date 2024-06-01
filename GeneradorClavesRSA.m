# Función que genera claves públicas y privadas usando el algoritmo RSA
# A la salida se obtiene la clave pública (n, e) y la clave privada (n, d)

function [p, q, e, d, n, z] = GeneradorClavesRSA()

  # PASO 1: Elijo los valores de p y q (primos my grandes)
  p = input('Digite un número primo para p: ');
  q = input('Digite un número primo para q: ');

  # PASO 2: Cálculo de los valores de n y z
  # Calculo n = pq
  n = p * q;

  # Calculo z = (p - 1) * (q - 1)
  z = (p - 1) * (q - 1);

  # PASO 3: Hallo un número e el cual sea relativamente primo a z
  # Inicializo la variable en donde voy a guardar el valor de e (inicio en e = 2)
  e = 2;

  # Mientras el número e sea menor a n y el máximo comun divisor con z no sea 1, sigo iterando
  while (e < n && gcd(e,z) != 1)

    # Aumento el valor de e en una unidad
    e++;

  endwhile

  # PASO 4: Hallo un número d el cual me de que ed - 1 sea divisible por z
  # Inicializo la variable en donde voy a guardar el valor de d (inicio en d = 1)
  d = 1;

  # Mientras que el resto de la división de ed entre z no sea 1, sigo iterando
  while(mod(d * e, z) != 1)

    # Aumento el valor de d en una unidad
    d++;

  endwhile

endfunction
