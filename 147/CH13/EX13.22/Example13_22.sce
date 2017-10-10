//Rated Power Pr, Primary voltage V1, Secondary voltage V2
//Resistance and reactance of primary winding R1 and X1
//Resistance and reactance of secondary winding R12 and X2
close();
clear;
clc;
Pr = 5000;//VA
V1 = 440;
V2 = 220;
R1 = 0.25;
X1 = 0.75;
R2 = 0.06;
X2 = 0.25;
a = V1/V2;
//Resistance and reactance reffered to secondary winding 'Rs2' and 'Xs2'
Rs2 = R2 + R1/a^2;
Xs2 = X2 + X1/a^2;
//Full load current 'I'
I = Pr/V2;
//Part (i)
Pf = 0.8;//lagging
theta = acos(Pf);
V_reg1 = (I*Rs2*cos(theta)+I*Xs2*sin(theta))/V2*100;
//Part (ii):
Pf = 1;
theta = acos(Pf);
V_reg2 = (I*Rs2*cos(theta)+I*Xs2*sin(theta))/V2*100;
//Part (iii)
Pf = 0.8;//leading
theta = acos(Pf);
V_reg3 = (I*Rs2*cos(theta)-I*Xs2*sin(theta))/V2*100;
mprintf('Voltage regulation on full load at p.f of (i): 0.8 lagging = %0.3f %%\n(ii): unity = %0.4f %%\n(iii): 0.8 leading = %0.3f %%',V_reg1,V_reg2,V_reg3);
 