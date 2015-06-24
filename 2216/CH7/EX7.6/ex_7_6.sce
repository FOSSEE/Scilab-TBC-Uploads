//Example 7.6: The reduction and Differential quantum efficiency
clc;
clear;
close;
//given data :
format('v',5)
disp("part (a)")
alfa_eff=1.5;// in mm^-1
gama=0.8;
L=0.5;// in mm
R1=0.35;
R2=R1;
R2a=1.0;
g_th1=(1/gama)*(alfa_eff+(1/(2*L))*log(1/(R1*R2)));
g_th2=(1/gama)*(alfa_eff+(1/(2*L))*log(1/(R1*R2a)));
del_gth=g_th1-g_th2;
disp(del_gth,"The reduction in threshold gain ,(mm^-1) = ")
disp("part (b)")
eta_D=(gama*(g_th2-alfa_eff))/(g_th2);
disp(eta_D,"Differential quantum efficiency =  ")
