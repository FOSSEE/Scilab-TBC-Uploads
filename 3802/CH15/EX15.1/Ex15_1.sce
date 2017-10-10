//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex15_1.sce

clc;
clear;
W=100;
V=250;
light_flux=3000;
printf("\n(a)")
mew=light_flux/W;
printf("\n Lamp efficiency=%d Lumens/watt \n",mew)

printf("\n(b)")
total_solid_angle=(4*%pi);
I=light_flux/total_solid_angle;
printf("\n Luminous intensity=%3.2f cd \n",I)

printf("\n(c)")
M.S.C.P=I/W;
printf("\n Mean Spherical Candle Power per watt=%1.4f cd/watt \n",M.S.C.P)
