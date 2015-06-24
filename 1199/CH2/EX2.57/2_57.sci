//2.57
clc;
Vb=10-(10/((2*10^3))*10^3);
disp(Vb,'Potential of point b, Vb=')
Vd=10-(10/((3*10^3))*2*10^3);
disp(Vd,'Potential of point d, Vd=')
Ebd=Vb-Vd;
printf("\nOutout voltage of bridge =%.2f V",Ebd)
