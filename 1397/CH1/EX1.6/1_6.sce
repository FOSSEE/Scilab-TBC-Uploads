//clc();
clear;
// To determine the wavelength of source of light
beeta=0.30;       // fringe spacing in centimtres
d=0.04;        // distance between two slits in centimtres
D=180;        // distance between the slit and screen in centimetres
lambda=(beeta*d*10^8)/D;
printf("the wavelength of source of light is %f Armstrong",lambda);
