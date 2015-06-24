clc;
V1=250; // Velocoty of jet aircraft in m/s
p1=60; // Atmospheric pressure in kPa
T1=260; // Atmospheric temperature in kelvin
rp=8; // Pressure ratio of compressor
T4=1350; // Temperature of gas at turbine inlet in kelvin
k=1.4; // Index of reversible adiabatic process
Cvo=0.7165; // Specific heat at constant volume in kJ/kg K
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
R=0.287; // characteristic gas constant of air in kJ/kg K
// (a).The pressure and temperature at each point of the cycle
// process 1-2 isentropic diffusion
T2=T1+(V1^2)/(2*Cpo*10^3); // Temperature at state 2
p2=p1*(T2/T1)^(k/(k-1)); // Pressure at state 2
// process 2-3 isentropic compression
p3=rp*p2; // perssure at state 3
T3=T2*(p3/p2)^((k-1)/k); // Temperature at state 3
wc=Cpo*(T3-T2); // compressor work
// process 3-4 Constant pressur heat addition
qH=Cpo*(T4-T3); // heat addition
p4=p3; // constant pressure
// process 4-5 isentropic expansion in turbine
wT=wc;
T5=T4-(wT/Cpo); // Temperature at state 5
p5=p4*(T5/T4)^(k/(k-1)); // Pressure at state 5
// process 5-6 Isentropic expansion in nozzle
p6=p1;
T6=T5*(p6/p5)^((k-1)/k); // Temperature at state 6
disp ("K",T6,"T6 = ","kPa",p6,"p6 = ","state 6","K",T5,"T5 = ","kPa",p5,"p5 = ","State 5","K",T4,"T4 = ","kPa",p4,"p4 =","State 4","K",T3,"T3 = ","kPa",p3,"p3 =","State 3","K",T2,"T2 =","kPa",p2,"p2 =","State 2","K",T1,"T1 =","kPa",p1,"p1 =  ","State 1","(a).The pressure and temperature at each point of the cycle");
// (b).Exit velocity of jet
V6=sqrt (2*Cpo*10^3*(T5-T6)); // Exit velocity of jet
disp ("m/s",V6,"(b).Exit velocity of jet =");
//   (c).Specific thrust and work output
F_mair=(V6-V1); // Specific thrust 
w=F_mair*V1/1000; // Work output
disp ("kJ/kg",w,"Work output = ","N",F_mair,"Specific thrust =","(c).Specific thrust and work output");
//   (d).Propulsion efficiency
eff_p=w/(w+(V6^2-V1^2)/2000);// Propulsion efficiency
disp ("%",eff_p*100,"(d).Propulsion efficiency =");
//    (e).Overall thermal efficiency
eff_th=w/qH; // Overall thermal efficiency
disp ("%",eff_th*100,"(e).Overall thermal efficiency =");
