clc
clear
//Input data
m=1;//Mass of air that has to be compressed in kg
P1=1;//Initial pressure of a single stage reciprocating air compressor in bar
P2=6;//Final pressure in bar
T1=303;//Initial temperature of air in K
n=1.2;//Polytropic index of air
R=287;//Gas constant for air in J/kg K
r=1.4;//Isentropic index

//Calculations
W1=(m*R*T1*log(P2/P1))/1000;//Work required for compression in kJ/kg in Isothermal compression process
W2=((n/(n-1))*m*R*T1*((P2/P1)^((n-1)/n)-1))/1000;//Work required for compression in a polytropic compression process in kJ/kg
W3=((r/(r-1))*m*R*T1*((P2/P1)^((r-1)/r)-1))/1000;//Work required for compression in a Isentropic compression process in kJ/kg

//Output
printf('(a)Work required in a isothermal compression is %3.3f kJ/kg \n(b)Work required in a polytropic compression is %3.3f kJ/kg \n(c)Work required in a isentropic compression is %3.3f kJ/kg',W1,W2,W3)
