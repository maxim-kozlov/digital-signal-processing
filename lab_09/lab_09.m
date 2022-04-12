function lab_9()
    I=double(imread('bimage5.bmp')) / 255;

    figure;
    imshow(I); 
    title('Исходное изображение');
    
    % point spread function
    % то по какому закону размазывается или собирается один пиксель 
    % PSF=fspecial('motion', 54, 65);
    
    [J1 P1]=deconvblind(I, PSF);
    figure;
    imshow(J1);
    title('Восстановленное изображение'); 
end