//Chapter-6,Example 6_15,Page 6-33
clc()

//Given Values:
A=0.5*10^3            //Area of B-H loop in Joules per m^3
V=10^-3               //Volume of specimen in m^3
n=50                  //Frequency of a.c.

//Calculations:
H=n*V*A               //Hysteresis power loss

printf('Hysteresis power loss is =%.0f Watt \n',H)
