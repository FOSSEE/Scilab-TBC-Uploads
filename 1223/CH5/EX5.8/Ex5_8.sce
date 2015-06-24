clear;
clc;
//Example 5.8
Vtn=0.8;
Kn=0.05;
//I_D=Kn*(Vgs-Vtn)^2
//Vds=Vgs=5-I_D*Rs
//combining these two equations we obtain 0.5(Vgs)^2+0.2Vgs-4.68
Vgs=poly(0,'Vgs')
p=poly([-4.68 0.2 0.5],'Vgs','c')
printf('\npossible solutions ::%.3f V\n',roots(p))
//assuming transistor is conducting ,Vgs must be greater than threshold voltage
Vgs=2.87;
I_D=Kn*(Vgs-Vtn)^2;
printf('\ndrain current=%.3f mA\n',I_D)
