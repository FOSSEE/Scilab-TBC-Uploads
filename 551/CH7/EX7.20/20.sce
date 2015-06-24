clc
h_fg=294.54; //kJ/kg

// log(p)=7.0323 - 3276.6/T - 0.652*log(T)
// Differentiating both sides, we get
// 1/2.302/p*dp/dT=3276.6/T^2-0.652/2.302/T

//Putting p=0.1 bar , we get
p=0.1; //bar
T=523; //K

vg=h_fg*10^3/T/(2.302*3276.6*p*10^5/T^2 - 0.652*p*10^5/T);
disp("vg=")
disp(vg)
disp("m^3/kg")