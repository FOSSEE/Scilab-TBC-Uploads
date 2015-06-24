//Chapter 14
//Example 14_10
//Page 371

clear;clc;

v=400;
ph_v=230;
r=0.2;
i=30;
pfr=-0.866;
pfy=0.866;
pfb=1;
ar=0;
ay=-120;
ab=120;

//referring to the phasor diagram given in the text book
air=-30;
aiy=-90;
aib=120;
vr=ph_v*(cos(0)-%i*sin(0));
vy=ph_v*(cos(-120*%pi/180)-%i*sin(-120*%pi/180));
vb=ph_v*(cos(120*%pi/180)-%i*sin(120*%pi/180));

ir=i*(cos(-30*%pi/180)+%i*sin(-30*%pi/180));
iy=i*(cos(-90*%pi/180)+%i*sin(-90*%pi/180));
ib=i*(cos(120*%pi/180)+%i*sin(120*%pi/180));


in=ir+iy+ib;

er=vr+r*ir+2*r*in;

printf("Vr = %.0f/_%.0f \n", ph_v, ar);
printf("Vy = %.0f/_%.0f \n", ph_v, ay);
printf("Vb = %.0f/_%.0f \n\n", ph_v, ab);

printf("Ir = %.0f/_%.0f \n", i, air);
printf("Iy = %.0f/_%.0f \n", i, aiy);
printf("Ib = %.0f/_%.0f \n\n", i, aib);

printf("Nuetral current = %.2f+j(%.2f) \n\n", real(in), imag(in));
printf("The supply voltage of phase R to nuetral = Er = %.2f/_%.2f volts \n\n", abs(er), atan(imag(er)/real(er))*180/%pi);



