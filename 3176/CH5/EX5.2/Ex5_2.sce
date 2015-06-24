//Ex5_2
// Illustration of Mean Filters
//To impliment the Following Mean Restoration filter 
//                  (I)Arithmetic  (II)Geometric  (III)Harmonic (IV)Contra Harmonic

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


function [f]=arithmetic_mean(v,m,n)
        w=fspecial('average',m); 
        f=imfilter(v,w); 
endfunction

function [f]=geometric_mean1(g,m,n);//gmean1() is used to filter an image using Geometric mean filter 
    size1=m;
    q=m*n;
    g=double(g);
    [nr,nc]=size(g);
    temp=zeros(nr+2*floor(size1/2),nc+2*floor(size1/2));
    temp(ceil(size1/2):nr+ceil(size1/2)-1,ceil(size1/2):nc+ceil(size1/2)-1)=g(1:$,1:$)
    temp=temp+1;
    for i=ceil(size1/2):nr+ceil(size1/2)-1
        for j=ceil(size1/2):nc+ceil(size1/2)-1
            t=temp(i-floor(size1/2):1:i+floor(size1/2),j-floor(size1/2):1:j+floor(size1/2)) ;
            temp2(i,j)=prod(t);                
        end
    end
    temp3=temp2.^(1/q);
    nn=temp3(ceil(size1/2):nr+ceil(size1/2)-1,ceil(size1/2):nc+ceil(size1/2)-1)
    f1=nn-1;
    f=mat2gray(f1)
endfunction

function [f]=geometric_mean2(g,m,n);//gmean2() is used to filter an image using Geometric mean filter 
    size1=m;
    q=m*n;
    [nr,nc]=size(g);
    temp=zeros(nr+2*floor(size1/2),nc+2*floor(size1/2));
    temp(ceil(size1/2):nr+ceil(size1/2)-1,ceil(size1/2):nc+ceil(size1/2)-1)=g(1:$,1:$)
    for i=ceil(size1/2):nr+ceil(size1/2)-1
        for j=ceil(size1/2):nc+ceil(size1/2)-1
            t=temp(i-floor(size1/2):1:i+floor(size1/2),j-floor(size1/2):1:j+floor(size1/2)) ;
            temp2(i,j)=geomean(t);                   
        end
    end
    nn=temp2(ceil(size1/2):nr+ceil(size1/2)-1,ceil(size1/2):nc+ceil(size1/2)-1)
    f=mat2gray(nn)
endfunction

function [f]=Harmonic_mean(g,m,n) //harmean1() is used to filter an image using Harmonic mean filter.
    size1=m;
    d=m*n;
    g=double(g);
    [nr,nc]=size(g);
    temp=zeros(nr+2*floor(size1/2),nc+2*floor(size1/2));
    temp(ceil(size1/2):nr+ceil(size1/2)-1,ceil(size1/2):nc+ceil(size1/2)-1)=g(1:$,1:$);

    for i=ceil(size1/2):nr+ceil(size1/2)-1
        for j=ceil(size1/2):nc+ceil(size1/2)-1
            t=temp(i-floor(size1/2):1:i+floor(size1/2),j-floor(size1/2):1:j+floor(size1/2)) ;
            t1=ones(m,n)./(t+%eps);
            t2=sum(t1);
            temp2(i,j)=d/t2;            
        end
    end
    nn=temp2(ceil(size1/2):nr+ceil(size1/2)-1,ceil(size1/2):nc+ceil(size1/2)-1);
    f=mat2gray(nn);
endfunction

function [f]=Contra_Harmonic_mean(g,m,n,Q) //charmean1() is use to filter an image using Contra Harmonic mean filter
    size1=m;
    d=m*n;
    g=double(g);
    [nr,nc]=size(g);
    temp=zeros(nr+2*floor(size1/2),nc+2*floor(size1/2));
    temp(ceil(size1/2):nr+ceil(size1/2)-1,ceil(size1/2):nc+ceil(size1/2)-1)=g(1:$,1:$)
    disp(Q)
    for i=ceil(size1/2):nr+ceil(size1/2)-1
        for j=ceil(size1/2):nc+ceil(size1/2)-1
            t=temp(i-floor(size1/2):1:i+floor(size1/2),j-floor(size1/2):1:j+floor(size1/2)) ;
            d1=(t+%eps).^Q;
            n1=(t+%eps).^(Q+1);
            d2=sum(d1);
            n2=sum(n1);
            temp2(i,j)=n2/(d2);
        end
    end
    nn=temp2(ceil(size1/2):nr+ceil(size1/2)-1,ceil(size1/2):nc+ceil(size1/2)-1)
    f=nn;
endfunction

/////////////////////////////////////    Main Programm    ////////////////////

gray=imread("Ex5_2.tif");
//gray=rgb2gray(a);
//gray=im2double(gray);
figure,ShowImage(gray,'Gray Image');
title('Original Image');
[M,N]=size(gray);

/////////////////////////////////////    Arithmetical Mean Filter    ////////////////////
v=imnoise(gray,'gaussian',0,0.02);
figure,ShowImage(v,'Noisy Image');
title('Image with Gaussian Noise');
m=3;n=3;
[f]=arithmetic_mean(v,m,n);
figure,ShowImage(f,'Recovered Image');
title('Recovered Image with Arithmetical Mean Filter');

/////////////////////////////////////    Geometric Mean Filter    ////////////////////
v=imnoise(gray,'gaussian',0,0.02);
figure,ShowImage(v,'Noisy Image');
title('Image with Gaussian Noise');
m=3;n=3;
[f]=geometric_mean1(v,m,n);
figure,ShowImage(f,'Recovered Image');
title('Recovered Image with Geometric Mean Filter');


///////////////////////////////////////    Geometric Mean Filter    ////////////////////
//v=imnoise(gray,'gaussian',0,0.02);
//figure,ShowImage(v,'Noisy Image');
//title('Image with Gaussian Noise');
//m=3;n=3;
//[f]=geometric_mean2(v,m,n);
//figure,ShowImage(f,'Recovered Image');
//title('Recovered Image with Geometric Mean Filter');


///////////////////////////////////////    Harmonic Mean Filter    ////////////////////
//temp(1:M,1:N)=0.5;
//r3=imnoise(temp,'salt & pepper',0.1);   // Generate salt & pepper Noise 
//gray_noise_salt=gray;                  // Add salt Noise Only
//[r c]=find(r3==1);
//        for i=1:length(r)
//                gray_noise_salt(r(i),c(i)) = 255; 
//        end
//figure,ShowImage(gray_noise_salt,'Noisy Image');
//title('Image with Salt Noise');
//m=3;n=3;
//[f]=Harmonic_mean(gray_noise_salt,m,n);
//figure,ShowImage(f,'Recovered Image');
//title('Recovered Image with Harmonic Mean Filter');
//
////////////////////////////////  Contra_Harmonic Mean Filter (Pepper)   ////////////////////
temp(1:M,1:N)=0.5;
r3=imnoise(temp,'salt & pepper',0.05);    //Generate salt & pepper Noise 
gray_noise_pepper=gray;                   //Add pepper Noise Only
[r c]=find(r3==0);                        //Find pepper Noise Only
        for i=1:length(r)
                gray_noise_pepper(r(i),c(i)) = 0; 
        end
figure,ShowImage(gray_noise_pepper,'Noisy Image');
title('Image with pepper Noise');
m=3;n=3;Q=1.5;
[f]=Contra_Harmonic_mean(gray_noise_pepper,m,n,Q);
figure,ShowImage(f,'Recovered Image');
title('Recovered Image with Contra Harmonic Mean Filter[ Q=1.5 ]');

///////////////////////////////////    Contra_Harmonic Mean Filter (Salt)   ////////////////////
temp(1:M,1:N)=0.5;
r3=imnoise(temp,'salt & pepper',0.1);    //Generate salt & pepper Noise 
gray_noise_salt=gray;                   //Add salt Noise Only
[r c]=find(r3==1);
        for i=1:length(r)
                gray_noise_salt(r(i),c(i)) = 255; 
        end
figure,ShowImage(gray_noise_salt,'Noisy Image');
title('Image with Salt Noise');
m=3;n=3;Q=-1.5;
[f]=Contra_Harmonic_mean(gray_noise_salt,m,n,Q);
figure,ShowImage(f,'Recovered Image');
title('Recovered Image with Contra Harmonic Mean Filter[ Q=-1.5 ]');


//////////////////////////////  Contra_Harmonic Mean Filter (Pepper)   ////////////////////
temp(1:M,1:N)=0.5;
r3=imnoise(temp,'salt & pepper',0.05);    //Generate salt & pepper Noise 
gray_noise_pepper=gray;                  // Add pepper Noise Only
[r c]=find(r3==0);                        //Find pepper Noise Only
        for i=1:length(r)
                gray_noise_pepper(r(i),c(i)) = 0; 
        end
figure,ShowImage(gray_noise_pepper,'Noisy Image');
title('Image with pepper Noise');
m=3;n=3;Q=-1.5;
[f]=Contra_Harmonic_mean(gray_noise_pepper,m,n,Q);
figure,ShowImage(f,'Recovered Image');
title('Recovered Image with Contra Harmonic Mean Filter[ Q=-1.5 ]');

///////////////////////////////////    Contra_Harmonic Mean Filter (Salt)   ////////////////////
temp(1:M,1:N)=0.5;
r3=imnoise(temp,'salt & pepper',0.1);    //Generate salt & pepper Noise 
gray_noise_salt=gray;                   //Add salt Noise Only
[r c]=find(r3==1);
        for i=1:length(r)
                gray_noise_salt(r(i),c(i)) = 255; 
        end
figure,ShowImage(gray_noise_salt,'Noisy Image');
title('Image with Salt Noise');
m=3;n=3;Q=1.5;
[f]=Contra_Harmonic_mean(gray_noise_salt,m,n,Q);
figure,ShowImage(f,'Recovered Image');
title('Recovered Image with Contra Harmonic Mean Filter[ Q=1.5 ]');
