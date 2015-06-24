clc;
p1=1; // Initial pressure (before compression) of air in bar
p2=8; // Final pressure (after compression) of air in bar
Vp=15; // Displacement volume of reciprocating air compressor in litres
Vc=0.05*Vp; // Clearance volume of reciprocating air compressor in litres
N=600; // Speed of compressor in rpm
V1=Vc+Vp; // Total volume of reciprocating air compressor in litres
p3=p2; // constant pressure process
p4=p1; // constant pressure process
V3=Vc;// Clearance volume of reciprocating air compressor in litres
n=1.3; // Index of reversible adiabatic compression process
m=1.4; // Index of reversible adiabatic expansion process
V4=V3*(p3/p4)^(1/m);
// (a).Work per machine cycle
Wcycle = ((n/(n-1))*p1*10^2*V1*10^-3*(1-(p2/p1)^((n-1)/n)))-((m/(m-1))*p4*10^2*V4*10^-3*(1-(p3/p4)^((m-1)/m))); // Work per machine cycle
disp ("kJ",Wcycle,"Work per machine cycle (Error in textbook)","(a)");
Wpower=abs (Wcycle)*(N/60); // Power consumption of the compressor
disp ("kW",Wpower,"Power consumption of the compressor");
// (b).Work of the cycle if m=n
m=n;
W_cycle=(n/(n-1))*p1*10^2*(V1-V4)*10^-3*(1-(p2/p1)^((n-1)/n)); // Work per machine cycle
disp ("kJ",W_cycle,"Work per machine cycle","(b)");
er=((W_cycle-Wcycle)/Wcycle) * 100 // Error involved in calculating work if m=n
disp ("%",er,"Error (Error in textbook)= ");
// (c).Clearance volumetric efficiency
C=Vc/Vp;
eff = 1+C+-C*(p2/p1)^(1/n); // Clearance volumetric efficiency
disp ("%",eff*100,"Clearance volumetric efficiency = ","(c).Clearance volumetric efficiency");

