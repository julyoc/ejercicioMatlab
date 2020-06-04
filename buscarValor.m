% @function buscarValor
% @param filename {string} nombre del archivo a leer
% @param x {any} valor que se buscara en la grafica
% @param domMin {any} valor minimo a tomar
% @param domMax {any} valor maximo a tomar
% @returns z {any} posicion del valor equivalente
% @returns leng {any} valor de filas de la matriz
function[z, leng] = buscarValor(filename, x, domMin, domMax)
    if x <= domMax
        %Lee el archivo CSV
        M = csvread(filename);
        %Guarda las dimenciones utiles
        len = size(M);
        leng = len(1);
        %Transforma el valor de X para el dominio de la matriz
        x = round(((x-domMin)*len(2))/(domMax-domMin));
        if x <= 1
            x=1;
        end
        if x <= len(2)
            %Guarda la columna de la matriz a uzar
            V = M(:,x);
            %Guarda el valor maximo de la columna
            y = max(V);
            %Retorna el valor de la posicion del vamor maximo de la columna
            z = max(find(V == y));
        else
            z = 'Error: x sobrepasa la longitud de columnas de la matriz';
        end
    else
        z = 'Error: el valor exede la longitud maxima';
    end
end