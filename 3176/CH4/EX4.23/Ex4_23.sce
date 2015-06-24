//Ex4_23
// Reduction of Moire Pattern Using Notch Filtering
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

function[H]=notchfilter(type1,M,N,D0,n)//notchfilter is used to filter an image .
    u=0:(M-1);
    v=0:(N-1);
    idx=find(u>M/2);
    u(idx)=u(idx)-M;
    idy=find(v>N/2);
    v(idy)=v(idy)-N;
    [U,V]=meshgrid(v,u);
    D=sqrt(U.^2+V.^2);
    x=[41 45 82 86 162 166 203 207];
    y=[112 55 112 56 114 58 115 58];
    select type1           
        case'ideal'then
        //H=double(D<=D0);        
H=ones(M,N);
for a=1:M
    for b=1:N
        for i=1:length(x)
        d=sqrt((a-x(i))*(a-x(i))+(b-y(i))*(b-y(i)));
            if (d<D0)
           //H(a,b)=1-(1/(1+(d/D0)^(2*n)));
           H(a,b)=0
            end 
        end 
    end
end
        
    case'butterworth'then
        if argn(2)==4 then
            n=1;
        end
        //H = ones(M,N)./(1+(D./D0).^(2*n));
        H=ones(M,N);
    for a=1:M
    for b=1:N
        for i=1:length(x)
        d=sqrt((a-x(i))*(a-x(i))+(b-y(i))*(b-y(i)));
           if (d<D0)
           H(a,b)=1-(1/(1+(d/D0)^(2*n)));
           //H(a,b)=0
           end 
        end 
    end
end
        
        case'gaussian'then
        //H=exp(-(D.^2)./(2*(D0^2)));
        H=ones(M,N);
    for a=1:M
    for b=1:N
        for i=1:length(x)
        d=sqrt((a-x(i))*(a-x(i))+(b-y(i))*(b-y(i)));
           if (d<D0)
           //H(a,b)=1-(1/(1+(d/D0)^(2*n)));
           H(a,b)=1-(exp(-(d.^2)./(2*(D0^2))));
           //H(a,b)=0
           end 
        end 
    end
end
    else
        disp('Unknownfiltertype.')
    end

endfunction


///////////////////////////////////   Main Programm   ////////////////////////////////

a=imread("Ex4_23.tif");
//gray=rgb2gray(a);
gray=im2double(a);

figure,ShowImage(gray,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(gray);

h=fft2(gray);//fft2() is used to find 2-Dimensional Fast Fourier Transform of an matrix
i=log(1+abs(h));
in=fftshift(i);//fftshift() is used to rearrange the fft output, moving the zero frequency to the center of the spectrum.
inm=mat2gray(in)
figure,ShowImage(inm,'Frequency Spectrum');
title('Frequency Spectrum','color','blue','fontsize',4);

filt=notchfilter('gaussian',M,N,9,2); // User Define Function which generate Filter Mask Corresponding to Low Frequency

//filt_shift=fftshift(filt);
n=filt.*fftshift(h);//Multiply the Original Spectrum with the Filter Mask.
figure,ShowImage(abs(n),'Frequency Spectrum');
title('Spectrum After Filtering','color','blue','fontsize',4);
Image_filter=real(ifft(fftshift(n)));
Image_filter=mat2gray(Image_filter)
figure,ShowImage(Image_filter,'Filtered Image');
title('Filtered Image with Specific Cut-Off Frequency','color','blue','fontsize',4);









