clear all; clc;

disp("We have h4=104 Btu/lbm,h2=h1=53 Btu/lbm,p4=p1=20psia,s4=s-s3=0.226Btu/lbm-R and Hs3=122 Btu/lbm")
h4=104
hs3=122
Eta_c=0.75
h_3dash=h4+(hs3-h4)/Eta_c
printf("h_3dash=%0.0f Btu/lbm",h_3dash)

w_i=h_3dash-h4
printf("\n The compressor work required per unit mass is w_i =%0.0f Btu/lbm",w_i)

h1=53
qi=h4-h1
printf("\n The heat absorbed by the evaporator per unit mass =qi= %0.0f Btu/lbm",qi)

beta1=qi/w_i
printf("\n The coefficient of performance beta= %0.1f",beta1)

m=10
Pc=m*w_i
printf("\n The total compressor power required Pc=%0.0f=240 Btu/s=340 hp",Pc)

qi=51
Qr=m*qi
printf("\n The refrigeration capacity is Qr= %0.0f Btu/s=153 tons",Qr)




















