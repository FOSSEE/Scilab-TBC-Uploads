clc;
clear;
printf("\n Example 8.4\n");

T=290;//Temperature at which compression takes place
printf("\n Given:\n Temperature at which compression takes place = %d K",T);
P1=101.3e3;//Initial pressure
P2=2065e3;//Final pressure
printf("\n Compressed from a Pressure of %.1f kN/m^2 to %d kN/m^2",P1*1e-3,P2*1e-3);
eta=.85;//Mechanical efficiecy
printf("\n Mechanical efficiecy = %d percent",eta*1e2);
c1=4/100;//Clearance in cylinder 1
printf("\n Clearance in cylinder 1 = %d percent",c1*1e2);
c2=5/100;//Clearance in cylinder 1
printf("\n Clearance in cylinder 2 = %d percent",c2*1e2);
R=P2/P1;//Overall compression ratio
printf("\n\n Overall compression ratio = %.1f",R);
V_spe=22.4/28.8*T/273;//Specific volume of air at 290 K
printf("\n Specific volume of air at 290 K = %.3f m^3/kg\n (a)",V_spe);
W=P1*V_spe*2*(1.25/(1.25-1))*(R^.1-1);
//Energy supplied to the compressor, that is the work of compression
W_act=W/0.85;
printf("\n Energy supplied to the compressor, that is the work of compression = %.1f kJ/kg",W_act*1e-3);
printf("\n (b)");
//the work done in isothermal compression of 1 kg of gas
W_it=P1*V_spe*log(R);
//Isothermal efficiency
eta_it=100*W_it/W_act;
printf("\n Isothermal efficiency = %.0f percent",eta_it);
printf("\n (c)");
Gamma=1.4;
//the work done in isentropic compression of 1 kg of gas
W_ie=P1*V_spe*(Gamma/(Gamma-1))*((R)^((Gamma-1)/Gamma)-1);
//Isentropic efficiency
eta_ie=100*W_ie/W_act;
printf("\n Isentropic efficiency = %d percent",eta_ie);
printf("\n (d)")
//From equation 8.47, volume swept out in first cylinder in compression of 1 kg of gas is given by:
Vs1=V_spe/(1+c1-(c1*(R)^(1/(2*2.5))));
//Similarly, the swept volume of the second cylinder is given by:
Vs2=V_spe*(1/R)^0.5/(1+c2-(c2*(R)^(1/(2*2.5))));
ratio=Vs1/Vs2;
printf("\n the ratio of the swept volumes in the two cylinders = %.2f",ratio);