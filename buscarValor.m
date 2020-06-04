function[z, leng] = buscarValor(filename, x, domMin, domMax)
    if x <= domMax
        M = csvread(filename);
        len = size(M);
        leng = len(1);
        x = round(((x-domMin)*len(2))/(domMax-domMin));
        if x <= 1
            x=1;
        end
        if x <= len(2)
            V = M(:,x);
            y = max(V);
            z = max(find(V == y));
        else
            z = 'Error: x sobrepasa la longitud de columnas de la matriz';
        end
    else
        z = 'Error: el valor exede la longitud maxima';
    end
end