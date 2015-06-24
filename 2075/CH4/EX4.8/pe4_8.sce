//example 4.8
clc; funcprot(0);
// Initialization of Variable
Rf=22;
Ri=1;
Rs=15;
I=4.75;
Rc=4;
Vp=2;
Rl=8;
Im=4;
//calculation
Av=1+(Rf/Ri);
disp(Av,"gain")
Il=(Rs*I)/(Rc+13.75);
disp(Il,"limit current in A:")
Vo=Vp*Av;
disp(Vo,"output voltage in V:")
V=Im*Rl;
disp(V,"maximum output voltage in V")
clear()
