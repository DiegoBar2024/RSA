# Ésta función lleva a cabo el cifrado RSA
# Entradas: Clave publica (e,n)
# Salida: Mensaje cifrado en ASCII

function c_ASCII = CifradoRSA(e, n, m)

  # Transformo cada uno de los caracteres del mensaje de entrada a ASCII
  m_ASCII = m - 0;

  # Creo un vector en el cual voy a almacenar el valor ASCII del mensaje cifrado
  c_ASCII = [];

  # Hago el pasaje del número e a representación binaria
  e_BIN = dec2bin(e);

  # Itero caracter por caracter ASCII del mensaje cifrándolo uno por uno
  for (M = m_ASCII)

    # Seteo la variable C a 1
    C = 1;

    # Itero para cada uno de los bits de e_BIN
    for (e_i = e_BIN)

      # Seteo el C como el resto de dividir C^2 entre n
      C = mod(C ^ 2, n);

      # Si e_i = 1 entonces seteo C como el resto de dividir C * M entre n
      if (e_i == '1')

        # Seteo el C con el valor correspondiente
        C = mod(C * M, n);

      endif

    endfor

    # Agrego el caracter cifrado a la lista de caracteres cifrados
    c_ASCII = [c_ASCII, C];

  endfor

endfunction
