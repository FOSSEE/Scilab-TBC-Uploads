//Example 8// Ch 5
clc;
clear;
close;
// given data

delta=1;//at standard temp and pressure
r=1;//radius of conductors in cm
s=40;//subconductor to subconductor spacing in cm
D=500; //phase to phase spacing in cm
E0=30*delta*(1+(0.3/sqrt(delta*r)));//corona onset field in kVpeak/cm
printf("corona onset field %f kVpeak/cm",E0)

V01=E0*log(D/r);//corona onset voltage using single conductor
printf("corona onset voltage V01 is %f kVpeak",V01)
V01rms=V01/sqrt(2);//rms onset voltage in kV
printf("corona rms onset voltage V01rms %f kV",V01rms)

x2 = log(D /(sqrt(s*r)));
y2 = (1+((2*r)/s));

V02=2*E0*r*(x2/y2);//corona onset voltage using bundle-2 conductor arranged horizontally and vertically
printf("corona onset voltage V02 is %f kVpeak",V02)
V02rms=V02/sqrt(2);//rms onset voltage in kV
printf("corona rms onset voltage V02rms is %f kV",V02rms)


x3 = log(D /((sqrt(2)*(s)^2*r)^0.3));
y3 = (1+((3*sqrt(3)*r)/s));

V03=3*E0*r*(x3/y3);//corona onset voltage using bundle-3 conductor arranged at vertices of an upright or inverted triangle
printf("corona onset voltage V03 is %f kVpeak",V03)
V03rms=V03/sqrt(2);//rms onset voltage in kV
printf("corona rms onset voltage V03rms is %f kV",V03rms)


x4 = log(D /((sqrt(2)*(s)^3*r)^0.25));
y4 = (1+((4*sqrt(2)*r)/s));

V04=4*E0*r*(x4/y4);//corona onset voltage using bundle-4 conductor arranged at vertices of a square
printf("corona onset voltage V04 is %f kVpeak",V04)
V04rms=V04/sqrt(2);//rms onset voltage in kV
printf("corona rms onset voltage V04rms is %f kV",V04rms)


x5 = log(D /((sqrt(2)*(s)^3*r)^0.25));
y5 = (1+((3*sqrt(2)*r)/s));

V05=4*E0*r*(x5/y5);//corona onset voltage using bundle-4 conductor arranged at vertices of a diamond form square
printf("corona onset voltage V05 is %f kVpeak",V05)
V05rms=V05/sqrt(2);//rms onset voltage in kV
printf("corona rms onset voltage V05rms is %f kV",V05rms)

//acc. to eq 5.18 in question 7 corona onset voltage is calculated
