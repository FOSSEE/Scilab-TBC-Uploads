//Pinchoff voltage Vpo, Saturation current Idss
close();
clear;
clc;
Vpo = 4;//V
Idss = 10*10^(-3);//A
//Part(a):
Vgs = -2;//V
id_a = Idss*(1+Vgs/Vpo)^2;
//Part(b):
id = 7*10^(-3);//A
Vgs = Vpo*((id/Idss)^(1/2)-1);
mprintf('(a): Drain current id = %0.0f mA\n(b): Gate to source voltage vgs = %0.3f V',id_a*1000,Vgs);