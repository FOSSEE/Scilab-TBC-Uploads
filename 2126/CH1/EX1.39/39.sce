clc
clear

//Input data
V=5 //Volume of air in m^3
Ae=10*10^-4 //Exit area in cm^2
To=60+273 //Temperature inside in the tank in K
Po1=40 //Intial total pressure in bar 
Po2=2 //Final total pressure in bar
P=1 //Discharge pressure in bar
R=287 //Specific gas constant in J/kg-K

//Calculation
//Here pressure ratios P/Po1 and P/Po2 are always less than critical pressure ratio therefore flow is choked i.e. M=1 at exit
Gp=(0.0404184*Ae)/sqrt(To) //Mass flow rate by Stagnation pressure i.e. m/Po
//Differentiating m=(P*V)/(R*To) w.r.t. time and intrgrating resulting equation we get following expression.
t=-(V/(R*To*Gp))*log(Po2/Po1) //The time required for tank pressure to decrease from Po1 to Po2 in sec

//Output
printf('The time required for tank pressure to decrease from %i bar to %i bar is %3.2f sec',Po1,Po2,t)
