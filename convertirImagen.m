% @function convertirImagen
% @param uri {any} nnombre de la imagen a leer
function[] = convertirImagen(uri) 
    %Lee la imagen
    im = imread(uri);
    %Convierte la imagen un una imagen monocromatica
    M = rgb2gray(im);
    M = 255.- M;
    %Guarda la imagen como una matriz en formato CSV
    csvwrite(strcat(uri, '.csv'), M);
end