//Example 1// Ch 12
clc;
clear;
close;
// given data
r1=2;//inner coaxial cable radius
r2=5;//sheath radius over the insulation
Em1=40;//max stress in the insulation in kV/cm
Em2=25;//max stress in the insulation in kV/cm
epsilon1=6;
epsilon2=4;
x=Em1/Em2;
r=x*((epsilon1*r1)/(epsilon2));//radial thickness of the dielectric
printf("radial thickness of the dielectric %f cm",r)
inner=r-r1;//inner thickness of dielectric
outer=r2-r;//outer thickness of dielectric
printf("inner thickness of dielectric %f cm",inner)
printf("outer thickness of dielectric %f cm",outer)
V1=Em1*r1*log(r/r1);//voltage drop across dielectric in kV
V2=Em2*r*log(r2/r);//voltage drop across outer dielectric
printf("voltage drop across dielectric %f kV",V1)
printf("voltage drop across outer dielectric %f kV",V2)
pv = V1+V2;//peak voltage of cable
printf("peak voltage of cable %f kV",pv)
pvrms=pv/sqrt(2);
printf("peak voltage in rms %f kV",pvrms)






