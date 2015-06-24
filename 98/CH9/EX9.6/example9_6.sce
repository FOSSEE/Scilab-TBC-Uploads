//Chapter 9
//Example 9_6
//Page 215

clear;clc;

r=1/2;
dab=25;
daa=100;
dabdash=sqrt(dab^2+daa^2);

gmr=0.7788*r;

ds=((gmr*daa)^2)^(1/4);
dm=(dab^2*dabdash^2)^(1/4);
l=2*1e-7*log(dm/ds);

printf("GMR of conductor = %.3f cm \n\n", gmr);
printf("Self GMD = %.2f cm \n\n", ds);
printf("Mutual GMD = %.2f cm \n\n", dm);
printf("Inductance/conductor/m = %.2f*10^-7 H \n\n", l*1e7 );
printf(" Inductance/conductor/km = %.3f mH \n\n", 2*l*1e6 );



