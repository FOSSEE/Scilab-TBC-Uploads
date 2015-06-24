clc;
clear all;
u0=1.658;//given u0
ue=1.486;//given ue
lamda=5893*1e-8 //in cm
t=lamda/(4*(u0-ue));//Thicknesss of quarter wave plate 
disp(+'cm',t,'Thicknesss of quarter wave plate =')
