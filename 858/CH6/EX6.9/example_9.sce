clc
clear 
printf("example 6.9 page number 229\n\n")

//to calculate minimum oil circulation rate

G1=(855/22.4)*(106.6/101.3)*(273/299.7);
y1=0.02;
Y1=y1/(1-y1);
Gs=G1*(1-y1);

//for 95% removal
Y2=0.05*Y1;
x2=0.005;
X2=x2/(1-x2);
Y=0.204;
X1=0.176;    //in kmol bgenzene/kmol benzene free oil

Ls_molar=(Gs*(Y1-Y2))/(X1-X2);
Ls=Ls_molar*260;

printf("minimum oil circulation rate = %f kg/hr",Ls)
