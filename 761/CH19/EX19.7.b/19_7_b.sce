clc;
// page no 740
// prob no 19.8
Nh=640; Nv=480;// resolution of digital video signal as 640*480 pixels
Rf=30;//frame rate expressed in Hz
m=8;// bits per sample
// By using the product of Horizontal & vertical resolution, no of luminance pixels per frame are
Npl=Nh*Nv;
// since each of the color signals has one-fourth the total no of luma pixels
Npt=1.5*Npl;
//therefore bit rate is given as
fb=Npt*m*Rf;
disp('bps',fb,'The bit rate for the signal is');