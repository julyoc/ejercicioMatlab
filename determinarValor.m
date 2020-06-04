% @param filename {string} nombre del archivo de la imagen
% @param value {any} valor de X que se buscara
% @param Xmin {any} valor minimo que puede tomar X
% @param Xmax {any} valor maximo que puede tomar X
% @param Ymin {any} valor minimo que puede tomar Y
% @param Ymax {any} valor maximo que puede tomar Y
% @returns val {any} valor obtenido apartir de x | message

function[val] = determinarValor(filename, value, Xmin, Xmax, Ymin, Ymax)
    if Xmin <= value && value <= Xmax
        convertirImagen(filename);
        %buscarValor(filename, valor, min, max)
        %valor = el valor a buscar
        %min = valor minimo que puede tomar
        %max = valor maximo que puede tomar
        [z, len] = buscarValor(strcat(filename, '.csv'), value, Xmin, Xmax);
        % z es la posicion en el vector, len es la longitud del vector

        %calcularValor(dimMin, dimMax, value, len);
        %dimMin = valor minimo
        %dimMax = valor maximo
        %value = valor de la posicion
        %len = longitud del vector
        val = calcularValor(Ymin, Ymax, z, len); 
    else
        val = 'Valores ingresados incorrectamente';
    end
end