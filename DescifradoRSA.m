# Ésta función lleva a cabo el descifrado RSA
# Entradas: Clave privada (d,n) y texto cifrado C_ASCII
# Salida: Mensaje original en texto plano m

function [m] = DescifradoRSA(c_ASCII, d, n)

  # Creo el vector en donde voy a guardar la versión ASCII del mensaje original
  m_ASCII = [];

  # Hago el pasaje del número d a representación binaria
  d_BIN = dec2bin(d);

  # Itero caracter por caracter ASCII del texto cifrado descifrándolo uno por uno
  for (c = c_ASCII)

    # Seteo la variable C a 1
    C = 1;

    # Itero para cada uno de los bits de d_BIN
    for (d_i = d_BIN)

      # Seteo el C como el resto de dividir C^2 entre n
      C = mod(C ^ 2, n);

      # Si e_i = 1 entonces seteo C como el resto de dividir C * M entre n
      if (d_i == '1')

        # Seteo el C con el valor correspondiente
        C = mod(C * c, n);

      endif

    endfor

    # Agrego el caracter cifrado a la lista de caracteres cifrados
    m_ASCII = [m_ASCII, C];

  endfor

  # Hago el pasaje de texto cifrado a texto plano
  m = char(m_ASCII);

endfunction
