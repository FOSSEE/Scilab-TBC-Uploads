//CHAPTER 5_ Force,Torque and Shaft Power Measurement
//Caption : Load cell
// Example 1// Page 294

disp("Sg=2;")
disp("Rg=120;")
disp("v=0.3")
disp("E=210*10^9;")
Sg=2;   // Strain gage factor
Rg=120;    // Gage resistance
v=0.3    // poissons ratio
E=210*10^9;    // for steel
Pd=1   //('enter the power dissipation capacity=:')
// Looking for a suitable voltage measuring system
sig_f=700*10^6   //('enter the fatigue strength=:')
P_max=10000   //('enter the maximum load=:')
// For a load cell of square cross-section d,
d=sqrt(P_max/sig_f);
Ei=sqrt(4*Rg*Pd)   //input excitation to the bridge circuit
x=(Sg*sig_f*(1+v))/(2*E);
dEo_max=x*Ei*10^3;
disp("x=(Sg*sig_f*(1+v))/(2*E)")
printf('a voltmeter with a maximum range of %1.2f mV is suitable for measurement',dEo_max)
disp("Round it off to get the suitable range voltmeter")