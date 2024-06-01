function [] = CifradoRSA()

  # Pido al usuario un mensaje de texto de entrada
  m = input("Ingrese el mensaje a cifrar: ", "s");

  # Transformo cada uno de los caracteres del mensaje de entrada a ASCII
  m_ASCII = m - 0;

  # Creo un vector en el cual voy a almacenar el mensaje cifrado


  # Itero caracter por caracter ASCII del mensaje cifrándolo uno por uno
  for i = m_ASCII

    # Aplico la expresión de cifrado
    # c = mod((i ^ n)

  endfor

endfunction
