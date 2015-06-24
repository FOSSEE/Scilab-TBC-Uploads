// Chapter 6_The pn junction
//Caption_Space charge width
//Ex_4//page 228
T=300
Na=10^18    //acceptor ion concentration
Emax=3*10^5   //Max electric field
Vr=25   //Reverse bias voltage
eps=11.7*8.85*(10^-14)
e=1.6*(10^-19)
x=eps*(Emax^2)/(2*e*Vr);
Nd=Na*x/(Na-x)
printf('The ntype doping concentration such that the maximum electric field is obtained is %f /cm^3',Nd)