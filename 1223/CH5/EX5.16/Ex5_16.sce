clear;
clc;
//Example 5.16
Idss=2;//(mA) saturation current
Vp=-3.5;//(V) pinch off voltage
Vgs=[0 Vp/4 Vp/2]
I_D=Idss*(1-Vgs/Vp)^2;
disp(I_D,"I_D (A)")
Vds=Vgs-Vp;
disp(Vds,"Vdssat (V)")
