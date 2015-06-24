clc; funcprot(0); //Example 12.2

//Initializing the variables
Vp =12;
lp = 40;
lm = 1;
As = 2500;
Dm = 32;
rhoP = 1025;
rhoM = 1000;
Ap = As;

//Calculations
Am = As/40^2;
Vm = Vp*sqrt(lm/lp);
Dfm = 3.7*Vm^1.95*Am;
Rm = Dm - Dfm;
Rp = Rm *(rhoP/rhoM)*(lp/lm)^2*(Vp/Vm)^2;
Dfp = 2.9*Vp^1.8*Ap;
Dp = Rp + Dfp;

disp(Dp/1000,"Expected total resistance (kN) :");