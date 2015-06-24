
//To determine the specific energy consumption
//Page 376
clc;
clear;
W=400;
G=1;
a=1.5; //Acceleration
Ta=30; //Acceleration Time
Tf=36; //Free running Period
Tc=25; //Coasting Period
B=2.6;
r=45;
RI=10/100; //Rotational Inertia Effect
Eff=75/100; // Overall Efficieny
g=9.81; //Accleration due to gravity

Vm=Ta*a;
We=W*(1+RI);

//Distance Covered is equal to the area under the speed time curve
Da=Vm*Ta/(2*3600); //Acceleration
Df=Vm*Tf/3600; //Free Run

Ftf=W*(r+(10*g*G)); //Tractive effort during free run period

Fta=We*277.8; //Tractive effort due to acceleration

//During Coasting, The Accelrating force is equal to Tractive effort during free run
//Retardation due to coasting is 
Bc=Ftf/Fta;

V2=Vm-(Bc*Tc); //Speed of train after the coasting period
Tb=V2/B; // Braking period

Dc=((((Vm-V2)*Tc)/2)+(V2*Tc))/3600; //Distance covered during coasting
Db=V2*Tb/(2*3600); //Distance covered during braking

D=Da+Df+Dc+Db; //Total Distance

D1=Da+Df; //Distance for which the energy is being spent

SEO=(0.010726*(Vm^2)*We/(W*D))+(27.25*G*D1/D)+(0.2778*r*D1/D); //Specific Energy Output
//Note the Calculated Specific Energy Output during accleration is wrong.

SEOa=SEO/Eff; //Actual Specific Energy Output with 75% efficieny

printf('The Specific Energy Consumption is %g Whr/Tonne Km\n',SEOa)

