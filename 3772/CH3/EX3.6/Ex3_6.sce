// Problem 3.6,Page no.57

clc;clear;
close;

P=200*10**3 //N
L_1=0.10 //mm //Length of of portin AB
L_2=0.16 //mm //Length of of portin BC
L_3=0.12 //mm //Length of of portin CD
E=200*10**9 //N
d_1=0.1 //cm
d_2=0.08 //cm
d_3=0.06 //cm
A_1=(%pi*4**-1)*(0.1)**2 //mm**2
A_2=(%pi*4**-1)*(0.08)**2 //mm**2
A_3=(%pi*4**-1)*(0.06)**2 //mm**2

//Calculations

dell_L_1=(P*L_1*10**3)*(A_1*E)**-1 //mm
dell_L_2=(P*L_2*10**3)*(A_2*E)**-1 //mm
dell_L_3=(P*L_3*10**3)*(A_3*E)**-1 //mm
dell_L=dell_L_1+dell_L_2+dell_L_3 //mm

//Result
printf("Total Elongation of steel bar is %.3f mm",dell_L)
