clc
clear 
printf("example 6.8 page number 229\n\n")

//to find the mean driving force and mass transfer area

Gs=700/22.4    //in kmol of dry air/hr
Ls=1500/18     //in kmol of dry air/hr
y1=0.05
Y1=y1/(1-y1);
Y2=0.02*Y1;
X2=0
X1=(Gs/Ls)*(Y1-Y2);
m=Gs*(Y1-Y2);

//driving force
delta_Y1=Y1-1.68*X1;
delta_Y2=Y2-1.68*X2;
delta_Y=(delta_Y1-delta_Y2)/(log (delta_Y1/delta_Y2));
printf("driving force = %f kmol acetone/kmol dry air",delta_Y)

//mass transfer area
K_G=0.4    //in kmol acetone/kmol dry air
A=m/(K_G*delta_Y);
printf("\n\narea = %f sq m",A)
