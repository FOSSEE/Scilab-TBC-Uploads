clear ;
clc;
// Example 2.6
printf('Example 2.6\n\n');
printf('Page No. 52\n\n');

// given
P1= 50;// Dry saturated steam pressure in bar
P2= 0.5;// condenser  pressure in bar

//By using the steam tables saturation temperature is obtained at given pressures
T1= 537//The saturation temperatue in K at 50 bar
T2= 306//The saturation temperatue in K at 0.5 bar

// For Carnot Cycle
n=(1-(T2/T1))*100;
printf('Efficiency percentage of Carnot Cycle is %3.0f \n',n)


// For Rankine Cycle
// By usins steam tables, the total heat and the sensibles heat  and other remaining parameter has been calculated
h1= 2794*10^3;//the total heat in dry steam at 50 bar in J/kg
d= 0.655;// dryness fraction 
h2= 1725*10^3;// the entropy at state 2 in J/kg
h3= 138*10^3;// the sensible heat at 0.5 bar in J/kg
Vf= 1.03*10^-3;// volume of fluid im m^3,calculated from steam table
W= (Vf*(P1-P2))*10^5;// pump work in J/kg
E=(((h1-h2)-(W))/((h1-h3)-(W)))*100;
printf('Efficiency percentage of Rankine Cycle is %3.0f \n',E)


