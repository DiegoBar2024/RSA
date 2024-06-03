# Algoritmo RSA

[p, q, e, d, n, z] = GeneradorClavesRSA();

# Imprimo las claves pública y privada
fprintf('\nLa clave pública es(%d,%d)', e, n);
fprintf('\nLa clave privada es (%d,%d)', d, n);

m=input('\nEnter the message: ','s');

# Calculo el equivalente ASCII del mensaje
m1=m-0;

# Imprimo en pantalla el equivalente ASCII del mensaje
disp('ASCII equivalent of message ');
disp(m1);

# Calculo la cantidad de caracteres ASCII que tiene mi mensaje de entrada
over=length(m1);

# Seteo en 1 el primer valor del índice
o=1;

# Itero uno por uno para todos los caracteres ASCII
 while(o<=over);

    # Hago que m me guarde el o - ésimo caracter ASCII del mensaje
    m=m1(o);

    # Seteo la diferencia en 0
    diff=0;

    #
    if(m>n);
        diff=m-n+1;
    end
    m=m-diff;

# e_BIN = dec2bin(e)
qm=dec2bin(e);

# Calcula la longitud en bits de e_BIN
len=length(qm);

# C = 1
c=1;

m

# Setea el valor del índice inicial en 1
xz=1;

# Continua iterando mientras que el índice sea no mayor a la longitud
while(xz<=len)

    # En caso que el bit de e_BIN sea 1, hago un calculo
    if(qm(xz)=='1')
      c=mod(mod((c^2),n)*m,n);

    # En caso que el valor del bit de e_BIN sea 0, hago el otro cálculo
    elseif(qm(xz)=='0')
        c=(mod(c^2,n));

    end

    # Aumenta en una unidad el valor del índice
    xz=xz+1;
end

# Seteo éste valor de c que nunca vaya
c1(o)=c;

# d_BIN = dec2bin(d)
qm1=dec2bin(d);

# Calcula la longitud en bits de d_BIN
len1=length(qm1);

# Seteo el valor en 1 del parámetro donde voy a almacenar el "c" del cifrado
nm=1;

# Seteo el valor del índice en 1
xy=1;

# Itero bit por bit en cada uno de los bits del binario de d
while(xy<=len1)

    # En caso que el bit de d tenga un valor 1 que haga una operación
    if(qm1(xy)=='1')
       nm=mod(mod((nm^2),n)*c,n);

    # En caso que el bit de tenga un valor 0 que haga la otra operación
    elseif(qm1(xy)=='0')
        nm=(mod(nm^2,n));
    end

    # Incremento el valor del indice en una unidad
    xy=xy+1;
end


nm=nm+diff;
nm1(o)=char(nm);
o=o+1;
diff
 end



o=1;
fprintf('\nThe encrypted message is \n');
while(o<=over)
   fprintf('\t%d',c1(o));
   o=o+1;
end
o=1;
fprintf('\nThe decrypted mes in ASCII is \n');
while(o<=over)
fprintf('\t%d',nm1(o));
o=o+1;
end

fprintf('\nThe decrypted message is: ');
disp(nm1);

fprintf('\n');
