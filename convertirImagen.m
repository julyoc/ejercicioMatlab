function[] = convertirImagen(uri) 
    im = imread(uri);
    M = rgb2gray(im);
    M = 255.- M;
    csvwrite(strcat(uri, '.csv'), M);
end