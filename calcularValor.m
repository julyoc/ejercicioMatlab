% @function calcularValor
% @param domMin {any} valor minimo a tomar
% @param domMax {any} valor maximo a tomar
% @param value {any} numero equivalente a la poscicion a predecir
% @param len {any} longitud de los valores a predecir
% @returns res {any} el valor que se ha predecido
function[res] = calcularValor(domMin, domMax, value, len)
    %Crea un vector en el cual se guaardarn los valores a tomar en el eje Y
    vls = (domMax - domMin)/len;
    V = domMin:vls:domMax;
    %Retorna el valor a predecir
    res = V(len - value);
end