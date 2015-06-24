clc;funcprot(0);//EXAMPLE 3.2
// Initialisation of Variables
m=0.5;.....................//Mass of air in kg
etath=0.5;.................//Thermal efficiency of engine
hie=40;...................//Heat transferred during isothermal expansion in kJ
p1=7;....................//Pressure in bar at the beginning of expansion
v1=0.12;..................//Volume in m^3 at the beginning of expansion
cv=0.721;...................//Specific heat at constant volume in kJ/kgK
cp=1.008;..................//Specific heat at constant pressure in kJ/kgK
R=287;......................//Gas constant in J/kgK
//Calculations
t1=(p1*10^5*v1)/(R*m);....................//Max temp in K
t2=t1*(1-etath);.......................//Min temp in K
disp(t1,"The maximum temperature in Kelvin:")
disp(t2,"The minimum temperature in Kelvin:")
v2=(%e^((hie*1000)/(m*R*t1)))*v1;..................//Volume at the end of isothermal expansion in m^3
disp(v2,"Volume at the end of isothermal expansion in m^3")
printf("\n\n")
printf("Process                              Heat transfer\n")
printf("_______________________________________________________________\n")
printf("Isothermal expansion                               %d kJ\n",hie)
printf("Adiabatic reversible expansion                     %d kJ\n",0)
printf("Isothermal compression                            %d kJ\n",-hie)
printf("Adiabatic reversible compressions                  %d kJ",0)
