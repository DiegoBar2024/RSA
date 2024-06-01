function [c] = CifradoRSA(e,n)

  # Pido al usuario un mensaje de texto de entrada
  m = input("Ingrese el mensaje a cifrar: ", "s");

  # Transformo cada uno de los caracteres del mensaje de entrada a ASCII
  m_ASCII = m - 0;

  # Creo un vector en el cual voy a almacenar el valor ASCII del mensaje cifrado
  c_ASCII = [];

  # Itero caracter por caracter ASCII del mensaje cifrándolo uno por uno
  for i = m_ASCII

    # Aplico la expresión de cifrado
    c_CARACTER = mod(i ^ e, n);

    # Agrego el caracter cifrado a la lista
    c_ASCII = [c_ASCII, c_CARACTER];

  endfor

  # Construyo el texto cifrado en base a la cadena ASCII
  # c = char(c_ASCII);

endfunction
