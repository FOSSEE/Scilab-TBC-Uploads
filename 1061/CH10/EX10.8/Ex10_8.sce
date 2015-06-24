//Ex:10.8
clc;
clear;
close;
Br=50*10^6;// data rate in b/s
c=3*10^8;// speed of light in m/s
n1=1.47;// 
dl=0.02;// 
n12=n1*dl;// the difference b/w n1 and n2
L_si=(0.35*c)/(n12*Br);// transmission distance for Si fiber
L_GI=(2.8*c*n1^2)/(2*n1*n12*Br);// transmission distance for GRIN fiber
printf("The transmission distance for Si fiber =%f m", L_si);
printf("\n The transmission distance for GRIN fiber =%f m", L_GI);