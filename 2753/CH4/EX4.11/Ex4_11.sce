//Example 4.11: 
clc;
clear;
close;
//given data :
del_ic=1;// in mA
del_ib=10;// in micro-A
del_Vbe=0.02;// in V
del_ib=10*10^-6;// in A
Rc=2;// in k-ohm
Rl=10;// in k-ohm
Beta=del_ic/(del_ib*10^3);//
format('v',5)
disp(Beta,"Current gain,Beta = ")
Ri=(del_Vbe/del_ib)*10^-3;
format('v',4)
disp(Ri,"Input impedence,Ri(k-ohm) = ")
Rac=Rc*Rl/(Rc+Rl);
format('v',5)
disp(Rac,"Effective load,Rac(k-ohm) = ")
Av=round(Beta*Rac/Ri);
format('v',4)
disp(Av,"Voltage gain,Av = ")
Ap=Beta*Av;
format('v',6)
disp(Ap,"power gain,Ap = ")
