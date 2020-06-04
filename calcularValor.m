function[res] = calcularValor(domMin, domMax, value, len)
    vls = (domMax - domMin)/len;
    V = domMin:vls:domMax;
    res = V(len - value);
end