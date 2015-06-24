//clc();
clear;
// To calculate the wavelength of monochromatic light
beeta=0.04;     // fringe width in centimetres
d=0.1;         // seperation between slits in centimetres
D=80;          //distance between slits and screen in centimetres
lambda=(d*beeta*10^8)/D;
printf("the wavelength of monochromatic light is %f Armstrong",lambda);
