pkg load image
%questão 01
p = imread('moon.tif');
asd = [-0.25 0.5 -0.25;-0.5 2 -0.5;-0.25 0.5 -0.25]
p2 = imfilter(p,asd);
imshow(p), title('Imagem Original')
figure, imshow(p2), title('Imagem Filtrada')

%%teste%teste%teste

%teste teste teste
%Questão 02
dbz=imread('dz.jpg');
im_original=rgb2gray(dbz);
figure, imshow(im_original)
imwrite(im_original,'im_original.jpg')
%aplicação de ruidos
imsp1=imnoise(im_original,"salt & pepper",0.06);
imsp2=imnoise(im_original,"salt & pepper",0.005);
img1=imnoise(im_original,'gaussian',0,0.001);
img2=imnoise(im_original,'gaussian',0,0.03);
%aplicação de filtros de media
imed1=imfilter(imsp1,fspecial('average',3));
imed2=imfilter(imsp1,fspecial('average',5));
imed3=imfilter(imsp1,fspecial('average',7));
imed4=imfilter(imsp2,fspecial('average',3));
imed5=imfilter(imsp2,fspecial('average',5));
imed6=imfilter(imsp2,fspecial('average',7));
imed7=imfilter(img1,fspecial('average',3));
imed8=imfilter(img1,fspecial('average',5));
imed9=imfilter(img1,fspecial('average',7));
imed10=imfilter(img2,fspecial('average',3));
imed11=imfilter(img2,fspecial('average',5));
imed12=imfilter(img2,fspecial('average',7));
%aplicação de filtros de mediana
imedian1=medfilt2(imsp1,[3 3]);
imedian2=medfilt2(imsp1,[5 5]);
imedian3=medfilt2(imsp1,[7 7]);
imedian4=medfilt2(imsp2,[3 3]);
imedian5=medfilt2(imsp2,[5 5]);
imedian6=medfilt2(imsp2,[7 7]);
imedian7=medfilt2(img1,[3 3]);
imedian8=medfilt2(img1,[5 5]);
imedian9=medfilt2(img1,[7 7]);
imedian10=medfilt2(img2,[3 3]);
imedian11=medfilt2(img2,[5 5]);
imedian12=medfilt2(img2,[7 7]);
%PSNR das imagens com ruidos
error=im_original-imsp1;
MSE=mean(error(:).^2)
PSNR1 = 10*log10(255^2/MSE)
error=im_original-imsp2;
MSE=mean(error(:).^2)
PSNR2 = 10*log10(255^2/MSE)
error=im_original-img1;
MSE=mean(error(:).^2)
PSNR3 = 10*log10(255^2/MSE)
error=im_original-img2;
MSE=mean(error(:).^2)
PSNR4 = 10*log10(255^2/MSE)
%PSNR filtros de media
error=im_original-imed1;
MSE=mean(error(:).^2)
PSNR5 = 10*log10(255^2/MSE)
error=im_original-imed2;
MSE=mean(error(:).^2)
PSNR6 = 10*log10(255^2/MSE)
error=im_original-imed3;
MSE=mean(error(:).^2)
PSNR7 = 10*log10(255^2/MSE)
error=im_original-imed4;
MSE=mean(error(:).^2)
PSNR8 = 10*log10(255^2/MSE)
error=im_original-imed5;
MSE=mean(error(:).^2)
PSNR9 = 10*log10(255^2/MSE)
error=im_original-imed6;
MSE=mean(error(:).^2)
PSNR10 = 10*log10(255^2/MSE)
error=im_original-imed7;
MSE=mean(error(:).^2)
PSNR11 = 10*log10(255^2/MSE)
error=im_original-imed8;
MSE=mean(error(:).^2)
PSNR12 = 10*log10(255^2/MSE)
error=im_original-imed9;
MSE=mean(error(:).^2)
PSNR13 = 10*log10(255^2/MSE)
error=im_original-imed10;
MSE=mean(error(:).^2)
PSNR14 = 10*log10(255^2/MSE)
error=im_original-imed11;
MSE=mean(error(:).^2)
PSNR15 = 10*log10(255^2/MSE)
error=im_original-imed12;
MSE=mean(error(:).^2)
PSNR16 = 10*log10(255^2/MSE)
%PSNR filtros de mediana
error=im_original-imedian1;
MSE=mean(error(:).^2)
PSNR17 = 10*log10(255^2/MSE)
error=im_original-imedian2;
MSE=mean(error(:).^2)
PSNR18 = 10*log10(255^2/MSE)
error=im_original-imedian3;
MSE=mean(error(:).^2)
PSNR19 = 10*log10(255^2/MSE)
error=im_original-imedian4;
MSE=mean(error(:).^2)
PSNR20 = 10*log10(255^2/MSE)
error=im_original-imedian5;
MSE=mean(error(:).^2)
PSNR21 = 10*log10(255^2/MSE)
error=im_original-imedian6;
MSE=mean(error(:).^2)
PSNR22 = 10*log10(255^2/MSE)
error=im_original-imedian7;
MSE=mean(error(:).^2)
PSNR23 = 10*log10(255^2/MSE)
error=im_original-imedian8;
MSE=mean(error(:).^2)
PSNR24 = 10*log10(255^2/MSE)
error=im_original-imedian9;
MSE=mean(error(:).^2)
PSNR25 = 10*log10(255^2/MSE)
error=im_original-imedian10;
MSE=mean(error(:).^2)
PSNR26 = 10*log10(255^2/MSE)
error=im_original-imedian11;
MSE=mean(error(:).^2)
PSNR27 = 10*log10(255^2/MSE)
error=im_original-imedian12;
MSE=mean(error(:).^2)
PSNR28 = 10*log10(255^2/MSE)