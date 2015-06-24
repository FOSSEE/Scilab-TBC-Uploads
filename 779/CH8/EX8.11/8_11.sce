m1 = 2; // m1_dot
m2 = 1;
T1 = 90+273; 
T2 = 30+273;
T0 =300;
m = m1+m2;
x = m1/m;
t = T2/T1; // Tau
cp = 4.187;
Sgen = m*cp*log((x+t*(1-x))/(t^(1-x)));
I = T0*Sgen;
disp("kW/K",Sgen,"The rate of entropy generation is")
disp("kW",I,"The rate of energy loss due to mixing is")
// Alternatively
T  = (m1*T1+m2*T2)/(m1+m2); // euilibrium temperature
Sgen1 = m1*cp*log(T/T1)+m2*cp*log(T/T2);
I1 = T0*Sgen1;
