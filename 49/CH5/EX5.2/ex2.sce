//CHAPTER 5_ Force,Torque and Shaft Power Measurement
//Caption : Load cell
// Example 2// Page 295
disp("b=.2")
disp("h=.05")
disp("Sg=2")
disp("Rg=120")
disp("sig_f=150*10^6")
b=.2   //('enter the width of load cell=:')
h=.05   //('enter the thickness of load cell=:')
Sg=2;
Rg=120;
sig_f=150*10^6   //('enter the fatigue strength=:')
E=70;      //(in GPa) for aluminium
v=0.33;           //poissons ratio
// Let dE/V_max be represented by W
W=Sg*sig_f/E;
printf('(dE/V)_max= %fd\n ',W)
P_max=100000   //('enter the value of maximum load=:')
l=sig_f*b*h^2/(6*P_max);

S=(6*Sg*l)/(E*b*h^2);
printf('Sensitivity of this load cell is %1.2f nV/N/per unit excitation',S);
