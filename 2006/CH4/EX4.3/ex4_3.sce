clc;
p1=1.3; // Initial pressure of gas in bar
V1=0.03; // Initial volume of gas in m^3
V2=0.1; // Final volume of gas in m^3
disp ("(a).Constant pressure process");
W=p1*10^2*(V2-V1); // work done by gas
disp("kJ",W,"work done by gas =");
disp ("(b).Constant Temperature process");
W=p1*10^2*V1*log(V2/V1);// Work done by gas
disp("kJ",W,"work done by gas =");
disp ("(c).polytropic process of index 1.3");
n=1.3; //index of polytropic process 
p2=p1*(V1/V2)^n; // From Polytropic process relation for final pressure
W=((p2*10^2*V2)-(p1*10^2*V1))/(1-n); // Work done by gas
disp("kJ",W,"work done by gas =");
