//Calculating magnetising current,primary current and primary power factor
//Chapter 3
//Example 3.9
//page 210
clear;
clc; 
disp("Example 3.9")
phi_m=7.5*10^(-3);                    //maximium flux
f=50;                            //frequecy in hertz
N1=144;                         //number of primary turns
N2=432;                         //number of secondary turns
kVA=0.24;                        //rating of transformer
E1=(4.44*phi_m*f*N1)
V1=E1;
printf("V1=%dV",V1)
I0=(kVA*1000)/V1;
phi0=acosd(0.26);
Im=I0*sind(phi0);
printf("\nIm=%fA",Im);
V2=(E1*N2)/N1
printf("\nV2=%fV",V2)
disp("At a load of 1.2kVA and power factor of 0.8 lagging")
kVA=1.2;
phi2=acosd(0.8);
I2=(kVA*1000)/V2;
I=(I2*N2)/N1;
I1c=(I*cosd(phi2))+(I0*cosd(phi0));
I1s=(I*sind(phi2))+(I0*sind(phi0));
I=sqrt(I1c^2+I1s^2);
printf("\nI1=%fA",I);
phi=acosd(((I*cosd(phi2))+(I0*cosd(phi0)))/I);
printf("\nprimary power factor=%flagging",cosd(phi))