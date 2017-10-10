clear
clc
//Example 3.1 LOAD LIFTED BY A HYDRAULIC JACK
//Moment equilibrium at C, (F*l)-(F1*l1)=0
l=0.33; //[m]
F=100; //[N]
l1=0.03; //[m]
F1=l*F/l1 //[N]

//Force equilibrium (small piston), (p1*A1)-F1=0
d1=1.5*10^-2; //[m]
A1=%pi*d1^2/4; //[m^2]
p1=F1/A1 //[N/m^2]

//Force equilibrium (lifter), F2-(p2*A2)=0
d2=5*10^-2; //[m]
A2=%pi*d2^2/4 //[m^2]
p2=p1 //[N/m^2](as both are at same elevation)
F2=p2*A2/10^3 //[kN]
printf("\nThe load that the jack can support = %.1f kN.\n",F2)