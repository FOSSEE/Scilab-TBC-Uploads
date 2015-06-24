clear;
clc;
//Example 5.11
Vtnd=1;
Vtnl=-2;
Knd=50;
Knl=10;
Vt=5;
Vo=poly(0,'Vo')
p=poly([4 -40 5],'Vo','c')
printf('\npossible solutions ::%.2f V\n',roots(p))
//since output voltage cannot be greater than supply voltage 5V
Vo=0.1;//(V)
I_D=Knl*(-Vtnl)^2;
printf('\ndrain current=%.3f microA\n',I_D)
