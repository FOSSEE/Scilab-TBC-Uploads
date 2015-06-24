//Calculate voltage regulation of transformer //Chapter 3
//Example 3.31
//page 237
clear;
clc;
disp("Example 3.31")
kVA=500;                    //rating of the transformers
V1=3300;                    //primary voltage in volts
V2=500;                    //secondary voltage in volts
f=50;                      //frequency in hertz
MAXeffi=0.97;        
x=0.75;                    //fraction of full load for maximium efficiency
pf1=1;
output1=(kVA*x*pf1*1000);
printf("Output at maximium efficiency=%dwatts",output1);
losses=((1/MAXeffi)-1)*output1;
printf("\nThus, at maximium efficiency,\n  lossses=%fW",losses)
Culoss=losses/2;
printf("\nCopper losses at 75percent of full load=%dW",Culoss);
CulossFL=Culoss/x^2;
printf("\nCopper losses at full load=%dW",CulossFL);
Re=CulossFL/(kVA*1000);
Ze=0.1;                        //equivalent impedence per unit
Xe=sqrt(Ze^2-Re^2);
phi=acosd(0.8);
reg=((Re*cosd(phi))+(Xe*sind(phi)))*100;
printf("\npercentage regulation=%f percent",reg);
