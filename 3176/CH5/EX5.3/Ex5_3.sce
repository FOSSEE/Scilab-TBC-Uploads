//Ex5_3
// Illustration of Order Statistic filter
//To impliment the Following Order Statistic Restoration filter 
//                  (I)Median  (II)MAX  (III)MIN (IV)Mid Point (V)Alpha trimmed.

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

function [f]=restoration_filter(v,type,m,n,Q,d)
    if argn(2) ==2 
        m=7;n=7;Q=1.5;d=10; 
    elseif argn(2)==5 
        Q=parameter;d=parameter; 
    elseif argn(2)==4 
        Q=1.5;d=2; 
    else  
        disp('wrong number of inputs'); 
    end 
    
    select type
        
    case'median'
        f=MedianFilter(v,[m n]);
        
    case'MIN'
       size1=m;
       [nr,nc]=size(v);
       temp=zeros(nr+2*floor(size1/2),nc+2*floor(size1/2));
       temp(ceil(size1/2):nr+ceil(size1/2)-1,ceil(size1/2):nc+ceil(size1/2)-1)=v(1:$,1:$);
        for i=ceil(size1/2):nr+ceil(size1/2)-1
            for j=ceil(size1/2):nc+ceil(size1/2)-1
                t=temp(i-floor(size1/2):1:i+floor(size1/2),j-floor(size1/2):1:j+floor(size1/2)) ;
                y=gsort(t);
                temp2(i-floor(size1/2),j-floor(size1/2))=min(y);
            end
        end
        f=mat2gray(temp2);    
    
    case'MAX'
       size1=m;
       [nr,nc]=size(v);
       temp=zeros(nr+2*floor(size1/2),nc+2*floor(size1/2));
       temp(ceil(size1/2):nr+ceil(size1/2)-1,ceil(size1/2):nc+ceil(size1/2)-1)=v(1:$,1:$);
        for i=ceil(size1/2):nr+ceil(size1/2)-1
            for j=ceil(size1/2):nc+ceil(size1/2)-1
                t=temp(i-floor(size1/2):1:i+floor(size1/2),j-floor(size1/2):1:j+floor(size1/2)) ;
                y=gsort(t);
                temp2(i-floor(size1/2),j-floor(size1/2))=max(y);
            end
        end
        f=mat2gray(temp2);
        
        case'Mid_Point'
       size1=m;
       [nr,nc]=size(v);
       temp=zeros(nr+2*floor(size1/2),nc+2*floor(size1/2));
       temp(ceil(size1/2):nr+ceil(size1/2)-1,ceil(size1/2):nc+ceil(size1/2)-1)=v(1:$,1:$);
        for i=ceil(size1/2):nr+ceil(size1/2)-1
            for j=ceil(size1/2):nc+ceil(size1/2)-1
                t=temp(i-floor(size1/2):1:i+floor(size1/2),j-floor(size1/2):1:j+floor(size1/2)) ;
                y=gsort(t);
                temp2(i-floor(size1/2),j-floor(size1/2))=0.5*(min(y)+max(y));
            end
        end
        f=mat2gray(temp2);       
    
        else
        disp('Unknownfiltertype.')
    end     
endfunction

function [f]=alphatrim(g,m,n,d)//alphatrim()is used to filter an image using alpha-trimmed mean filter 
    size1=m;
    [nr,nc]=size(g);
    temp=zeros(nr+2*floor(size1/2),nc+2*floor(size1/2));
    temp(ceil(size1/2):nr+ceil(size1/2)-1,ceil(size1/2):nc+ceil(size1/2)-1)=g(1:$,1:$)

    for i=ceil(size1/2):nr+ceil(size1/2)-1
        for j=ceil(size1/2):nc+ceil(size1/2)-1
            t=temp(i-floor(size1/2):1:i+floor(size1/2),j-floor(size1/2):1:j+floor(size1/2)) 
            y=gsort(t);
            a=y(:)
            b=a';
            t1=b(1+d/2:$-d/2);
            temp2(i-floor(size1/2),j-floor(size1/2))=mean(t1);
        end
    end    
    f=mat2gray(temp2)   
endfunction


/////////////////////////////////////    Main Programm    ////////////////////

gray=imread("Ex5_3.tif");
//gray=rgb2gray(a);
//gray=im2double(gray);
figure,ShowImage(gray,'Gray Image');
title('Original Image');
[M,N]=size(gray);

///////////////////////////////////       Median Filter    ////////////////////
v=imnoise(gray,'salt &amp; pepper',0.1);
figure,ShowImage(v,'Noisy Image');
title('Original Image with Salt &amp; Pepper Noise');
//Filtering the corrupted image with median filter
h=restoration_filter(v,'median',3,3);
figure,ShowImage(h,'Recovered Image');
title('Recovered Image with Median Filter');
//Filtering the corrupted image with median filter
h1=restoration_filter(h,'median',3,3);
figure,ShowImage(h1,'Recovered Image');
title('Recovered Image with Median Filter');
//Filtering the corrupted image with median filter
h2=restoration_filter(h1,'median',3,3);
figure,ShowImage(h2,'Recovered Image');
title('Recovered Image with Median Filter');


///////////////////////////////////       MAX Filter    ////////////////////
temp(1:M,1:N)=0.5;
r3=imnoise(temp,'salt &amp; pepper',0.1);   // Generate salt &amp; pepper Noise  
gray_noise_pepper=gray;                  // Add Pepper Noise Only
[r c]=find(r3==0);
        for i=1:length(r)
                gray_noise_pepper(r(i),c(i)) = 0; 
        end
figure,ShowImage(gray_noise_pepper,'Noisy Image');
title('Noisy Image with Pepper Noise');

//Filtering the Salt Noise corrupted image with MAX filter
h=restoration_filter(gray_noise_pepper,'MAX',3,3);
figure,ShowImage(h,'Recovered Image');
title('Recovered Image with MAX Filter');


////////////////////////////////////       MIN Filter    ////////////////////
temp(1:M,1:N)=0.5;
r3=imnoise(temp,'salt &amp; pepper',0.1);   // Generate salt &amp; pepper Noise 
gray_noise_salt=gray;                  // Add salt Noise Only
[r c]=find(r3==1);
        for i=1:length(r)
                gray_noise_salt(r(i),c(i)) = 255; 
        end
figure,ShowImage(gray_noise_salt,'Noisy Image');
title('Noisy Image');

//Filtering the Salt Noise corrupted image with MIN filter
h=restoration_filter(gray_noise_salt,'MIN',3,3);
figure,ShowImage(h,'Recovered Image');
title('Recovered Image with MIN Filter');


/////////////////////////////////////       Mid-Point Filter    ////////////////////
//v=imnoise(gray,'gaussian',0,0.02);
//figure,ShowImage(v,'Noisy Image');
//title('Image with Gaussian Noise');
////Filtering the Salt Noise corrupted image with Mid-Point filter
//h=restoration_filter(v,'Mid_Point',3,3);
//figure,ShowImage(h,'Recovered Image');
//title('Recovered Image with Mid_Point Filter');


/////////////////////////////////       Alpha Trimmed Filter    ////////////////////
v=imnoise(gray,'gaussian',0,0.02);
v=imnoise(v,'salt &amp; pepper',0.05);
figure,ShowImage(v,'Noisy Image');
title('Image with Gaussian and Salt&amp;Pepper Noise');
m=5;n=5;d=5;
[f]=arithmetic_mean(v,m,n);  // Filtering with Arithmetical mean
figure,ShowImage(f,'Recovered Image');
title('Recovered Image with Arithmetical Mean Filter');
[f]=geometric_mean1(v,m,n);   // Filtering with Geometric mean
figure,ShowImage(f,'Recovered Image');
title('Recovered Image with Geometric Mean Filter');
//Filtering the corrupted image with median filter
h=restoration_filter(v,'median',5,5);  // Filtering with median Filtering
figure,ShowImage(h,'Recovered Image');
title('Recovered Image with Median Filter');
f=alphatrim(v,m,n,d);   // Filtering with alphatrim Filtering
figure,ShowImage(f,'Recovered Image');
title('Recovered Image with Alpha Trimmed Filter');