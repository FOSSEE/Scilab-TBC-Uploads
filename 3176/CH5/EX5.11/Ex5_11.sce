//Ex5_11
//Inverse Filtering
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

function[H,H1]=lowpassfilter(type1,M,N,D0,n,k)//lowpassfilter is used to filter an image .
    u=0:(M-1);
    v=0:(N-1);
    idx=find(u&gt;M/2);
    u(idx)=u(idx)-M;
    idy=find(v&gt;N/2);
    v(idy)=v(idy)-N;
    [U,V]=meshgrid(v,u);
    D=sqrt(U.^2+V.^2); //Distance Calculation
    D=fftshift(D);
    for i=1:M
        for j=1:N
            H(i,j)=exp(-k.*((i-(M/2))^2+(j-(N/2))^2).^(5/6)); //Atmospheric Degradation Function
        end
    end
    
    select type1
        
    case'inverse'
        if argn(2)==4 
            n=1;k=0.0025;
        end
        H=H;
        H1=H;
        
    case'butterworth'
        if argn(2)==4 
            n=1;
        end
//        H1 = (ones(M,N)./(1+(D./D0).^(2*n)));
        H1=double(D&lt;=D0);
        H=H.*H1;        
       
       else
        disp('Unknownfiltertype.')
    end
endfunction

///////////////////////////////////   Main Programm   ////////////////////////////////
gray=imread('Ex5_11.png');
gray=im2double(rgb2gray(gray));
figure,ShowImage(gray,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(gray);

h=fft2(gray);//fft2() is used to find 2-Dimensional Fast Fourier Transform of an matrix
in=fftshift(h);//fftshift() is used to rearrange the fft output, moving the zero frequency to the center of the spectrum.
i=log(1+abs(in));

inm=mat2gray(i)

////////////////////////// Filtering With Cut-off Frequency 480   ///////////////////////
[filt,H1]=lowpassfilter('inverse',M,N,480,1,0.0025); // Function which generate Filter Mask Corresponding to Low Frequency
//filt_shift=fftshift(filt);
//figure,ShowImage(abs(filt),'Filter Mask');
//title('Filter Mask to Specific Cut-Off Frequency');
n=in./(filt+%eps);//Multiply the Original Spectrum with the Filter Mask.
Image_filter=abs(ifft(fftshift(n)));
Image_filter=mat2gray(Image_filter)
figure,ShowImage(Image_filter,'Filtered Image');
title('Filtered Image with Full Inverse Filter','color','blue','fontsize',4);

////////////////////////// Filtering With Cut-off Frequency 40   ///////////////////////
[filt,H1]=lowpassfilter('butterworth',M,N,40,10,0.0025); // Function which generate Filter Mask Corresponding to Low Frequency
//filt_shift=fftshift(filt);
//figure,ShowImage(abs(filt),'Filter Mask');
//title('Filter Mask to Specific Cut-Off Frequency');
n=(in.*H1)./(filt+%eps);//Multiply the Original Spectrum with the Filter Mask.
Image_filter=abs(ifft(fftshift(n)));
Image_filter=mat2gray(Image_filter)
figure,ShowImage(Image_filter,'Filtered Image');
title('Filtered Image with Cut-Off Frequency 40','color','blue','fontsize',4);

////////////////////////// Filtering With Cut-off Frequency 70   ///////////////////////
[filt,H1]=lowpassfilter('butterworth',M,N,70,10,0.0025); // Function which generate Filter Mask Corresponding to Low Frequency
//filt_shift=fftshift(filt);
//figure,ShowImage(abs(filt),'Filter Mask');
//title('Filter Mask to Specific Cut-Off Frequency');
n=(in.*H1)./(filt+%eps);//Multiply the Original Spectrum with the Filter Mask.
Image_filter=abs(ifft(fftshift(n)));
Image_filter=mat2gray(Image_filter)
figure,ShowImage(Image_filter,'Filtered Image');
title('Filtered Image with Cut-Off Frequency 70','color','blue','fontsize',4);

////////////////////////// Filtering With Cut-off Frequency 100   ///////////////////////
[filt,H1]=lowpassfilter('butterworth',M,N,100,10,0.0025); // Function which generate Filter Mask Corresponding to Low Frequency
//filt_shift=fftshift(filt);
//figure,ShowImage(abs(filt),'Filter Mask');
//title('Filter Mask to Specific Cut-Off Frequency');
n=(in.*H1)./(filt+%eps);//Multiply the Original Spectrum with the Filter Mask.
Image_filter=abs(ifft(fftshift(n)));
Image_filter=mat2gray(Image_filter)
figure,ShowImage(Image_filter,'Filtered Image');
title('Filtered Image with Cut-Off Frequency 100','color','blue','fontsize',4);