//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 4


clear;
clc;


//Given:
To = 600; //temperature of air (K)
Po = 2000; //pressure of air (kPa)
gama = 1.4;
M = 0.8; //Mach number at throat
m = 29; //molecular mass of air
R = 8.314; //ideal gas constant

//To determine thermodynamical properties at throat and critical pressure

//(a)
//Using equation 5.40 (Page no 123).. u^2 = (M^2)*gama*P*V
//Substituting this in eq. 5.39 (Page no. 123) and on rearranging we get
P = Po/((1+(((gama-1)/2)*M^2))^(gama/(gama-1)));
//Using eq. 5.39 and the relation PoVo = RTo/m
u = sqrt((2*gama*R*To*1000)/(m*(gama-1))*(1-(P/Po)^((gama-1)/gama)));
//Using eq. 3.23 (Page no. 49)
T = To*(P/Po)^((gama-1)/gama);
//Let d be the density
d_o = (Po*m)/(R*To);
//Since P*(V^gama) = P/(den^gama) = constant...so
d = d_o*((P/Po)^(1/gama));
mprintf('(a). At throat');
mprintf('\nPressure = %i kPa',P);
mprintf('\nTemperature = %i K',T);
mprintf('\nVelocity = %f m/s',u);
mprintf('\nDensity = %f kg/cubic m',d);

//(b)
//Using eq. 5.42 (Page no.124)
Pc = Po*((2/(gama+1))^(gama/(gama-1))); //critical pressure
mprintf('\n\n(b).');
mprintf('\nThe critical pressure is %f kPa',Pc);

//end