//Ex5_1
// Noisy Images and their Histogram
//To plot the PDF of different Noise Distribution and add the same to the gray scale image.
//(I)Gaussian  (II)Uniform  (III)Salt & Pepper (IV)Log Normal  (V)Rayleigh  (VI)Erlang  (VII)Exponetial
// Version : Scilab 5.4.1
// Operating System : Window-xp, Window-7
//Toolbox: Image Processing Design 8.3.1-1
//Toolbox: SIVP 0.5.3.1-2
//Reference book name : Digital Image Processing
//book author: Rafael C. Gonzalez and Richard E. Woods

clc;
close;
clear;
xdel(winsid())//to close all currently open figure(s).

function R=imnoise2(type,M,N,a,b)
    if argn(2)==3 then
        a=0; b=1;
    end
    
    select type
        
    case'gaussian'then
        rand("normal")
        R=a+b*rand(M,N);
        
    case'uniform'then
        R=a+(b-a)*rand(M,N,"uniform");
        
    case'salt & pepper'then
        if argn(2)==3
            a = 0.15; b = 0.15;
        end
        if (a+b) > 1
            error('The sum Pa + Pb must not exceed 1.');
        end
        R(1:M,1:N) = 0.5;
        X = rand(M,N);
        [r c] = find(X<=a);
        for i=1:length(r)
                R(r(i),c(i)) = 0; 
        end
        u = a + b;
        [r c] = find(X>a & X<=u);
        for i=1:length(r)
                R(r(i),c(i)) = 255; 
        end      
        
    case'lognormal'then
        if argn(2)==3
            a = 1; b = 0.25;
        end
        R = a*exp(b*mtlb_randn(M,N));
        
     case'rayleigh'then
        if argn(2)==3
            a = 1; b = 0.25;
        end 
        R = a + ((-b)*(log(1-rand(M,N,"uniform")))).^0.5;       
        
     case'exponential'then
        if argn(2)==3
            a = 1;
        end 
        if a<=0
            error('Parameter a must be positive for exponential type.');
        end
        k = -1/a;
        R = k*log(1-rand(M,N,"uniform"));
        
     case'erlang'then
         if (b ~= round(b) | b <= 0)
            error('Param b must be positive for integer for Erlang.')
        end
        k = -1/a;
        R = zeros(M,N);
        for j=1:b
            R = R + k*log(1-rand(M,N,"uniform"));
        end              
        
        else
        disp('Unknownfiltertype.')
    end   
    
endfunction



/////////////////////////////////////// Main Programm  /////////////////////////////
gray=imread("Ex5_1.tif");
//gray=rgb2gray(a);
//gray=im2double(gray);
figure,ShowImage(gray,'Gray Image');
title('Original Image');
[M,N]=size(gray);
[count,cell]=imhist(gray);
figure,bar(cell,count,0.2);
mtlb_axis([0 255 0 35000]);
title('Histogram of Original Image');

///////////////////////////////////////    Gaussian Noise    ////////////////////
r1=imnoise2('gaussian',M,N,15,5);   // Generate Gaussian Noise with Given Mean and Variance
gray_noise_gaussian=gray+(r1);
figure,ShowImage(gray_noise_gaussian,'Gray Image with Noise');
title('Gray Image with Noise gaussian');
[count,cell]=imhist(gray_noise_gaussian);
figure;bar(cell,count,1.2);
mtlb_axis([0 255 0 3000]);
title('Gaussian');

///////////////////////////////////////    Rayleigh Noise    ////////////////////
r2=imnoise2('rayleigh',M,N,0,55);   // Generate rayleigh Noise 
gray_noise_rayleigh=gray+(r2);
figure,ShowImage(gray_noise_rayleigh,'Gray Image with Noise');
title('Gray Image with Noise rayleigh');
[count,cell]=imhist(gray_noise_rayleigh);
figure;bar(cell,count,1.2);
mtlb_axis([0 255 0 4000]);
title('Rayleigh');

///////////////////////////////////////    Erlang (Gamma) Noise    ////////////////////
r3=imnoise2('erlang',M,N,2,15);   // Generate erlang Noise 
gray_noise_erlang=gray+(r3);
figure,ShowImage(gray_noise_erlang,'Gray Image with Noise');
title('Gray Image with Noise erlang(Gamma)');
[count,cell]=imhist(gray_noise_erlang);
figure;bar(cell,count,1.2);
mtlb_axis([0 255 0 9500]);
title('Erlang (Gamma)');

///////////////////////////////////////    Exponential Noise    ////////////////////
r4=imnoise2('exponential',M,N,0.15);    //Generate exponential Noise 
gray_noise_exponential=gray+(r4);
figure,ShowImage(gray_noise_exponential,'Gray Image with Noise');
title('Gray Image with Noise exponential');
[count,cell]=imhist(gray_noise_exponential);
figure;bar(cell,count,1.2);
mtlb_axis([0 255 0 4500]);
title('Exponential');

///////////////////////////////////////    Uniform Noise    ////////////////////
r5=imnoise2('uniform',M,N,0,20);   // Generate uniform Noise 
gray_noise_uniform=gray+(r5);
figure,ShowImage(gray_noise_uniform,'Gray Image with Noise');
title('Gray Image with Noise uniform');
[count,cell]=imhist(gray_noise_uniform);
figure;bar(cell,count,1.2);
mtlb_axis([0 255 0 2000]);
title('Uniform');

///////////////////////////////////////    Salt & pepper Noise    ////////////////////
r6=imnoise2('salt & pepper',M,N,0.15,0.15);   // Generate salt & pepper Noise 
gray_noise_salt_pepper=gray+(r6);
figure,ShowImage(gray_noise_salt_pepper,'Gray Image with Noise');
title('Gray Image with Noise salt&pepper');
[count,cell]=imhist(gray_noise_salt_pepper);
figure;bar(cell,count,1.2);
mtlb_axis([0 255 0 35000]);
title('Salt & pepper');

/////////////////////////////////////////    lognormal Noise    ////////////////////
//r7=imnoise2('lognormal',M,N,5,0.65);   // Generate lognormal Noise 
//gray_noise_lognormal=gray+(r7);
//figure,ShowImage(gray_noise_lognormal,'Gray Image with Noise');
//title('Gray Image with Noise lognormal');
//[count,cell]=imhist(gray_noise_lognormal);
//figure;bar(cell,count,1.2);
//mtlb_axis([0 255 0 5500]);
//title('lognormal');






