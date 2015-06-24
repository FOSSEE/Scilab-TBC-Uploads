//Ex:4.23
clc;
clear;
close;
// dl=0.23y, value of dl in E-plane
// dL=0.375y, value of dl in H-plane
// h=15y, height in terms of wavelength y
// L=h^2/8*dl in  E-plane
// L=(15*y)^2/8*0.2y=225y^2/1.6y;=140.625y
printf("The value of length L in terms of wavelength y=140.625y");
// OE=atan(h/2L)=atan(15y/2*140.625y)=atan(15/2*140.625)
OE=(atan(15/(2*140.625))*180/%pi);// half flare angle in E-plane in degree
// OH=acos(L/(L+dL))=acos(140.625y/(140.625y+0.375y))=acos(140.625/(140.625+.375))
OH=(acos(140.625/(140.625+0.375))*(180/%pi));// half flare angle in H-plane in degree
//w=2*L*tan(OH)=2*140.625y*tan(4.18)=20.56y, width interms of wavelength y
printf("\n The half flare angle in E-plane = %f degree", OE);
printf("\n The half flare angle in H-plane = %f degree", OH);
printf("\n The width interms of wavelength y= 20.56y");