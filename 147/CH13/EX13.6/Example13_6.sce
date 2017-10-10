//Input Power Pi, Primary current I1, Primary winding resistance R1
//Primary terminal voltage V1
close();
clear;
clc;
Pi = 75;//W
I1 = 1.5;//A
V1 = 120;//V
R1 = 0.4;//ohm
Pc = Pi - I1^2*R1;
Pfo = Pi/(V1*I1);
mprintf('Core loss, Pc = %0.1f W\nNo-load power factor = %0.3f lagging',Pc,Pfo);