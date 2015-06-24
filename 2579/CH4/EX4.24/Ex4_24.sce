//Ex:4.24
clc;
clear;
close;
D=20;// diameter of the reflector mouth in m
// As we know, f=(D/4)*cot(x/2)
// f/D=0.25*cot(x/2)
f_d1=0.30;// ratio of f to D or aperture number
f_d2=0.55;// aperture number
f_d3=0.80;// aperture number
// 0.30=0.25*cot(x/2)
// tan(x/2)=0.25/0.30
x1=2*(atan(0.25/f_d1))*(180/%pi);
x2=2*(atan(0.25/f_d2))*(180/%pi);
x3=2*(atan(0.25/f_d3))*(180/%pi);
Aa1=2*x1;// angular aperture in degree
Aa2=2*x2;// angular aperture in degree
Aa3=2*x3;// angular aperture in degree
f1=f_d1*D;// position of focal point for aperture number 0.30
f2=f_d2*D;// position of focal point for aperture number 0.30
f3=f_d3*D;// position of focal point for aperture number 0.30
printf("The angular aperture for aperture number 0.30 = %f degree", Aa1);
printf("\n The angular aperture for aperture number 0.55 = %f degree", Aa2);
printf("\n The angular aperture for aperture number 0.80 = %f degree", Aa3);
printf("\n The position of focal point for aperture number 0.30 = %f meter", f1);
printf("\n The position of focal point for aperture number 0.55 = %f meter", f2);
printf("\n The position of focal point for aperture number 0.80 = %f meter", f3);