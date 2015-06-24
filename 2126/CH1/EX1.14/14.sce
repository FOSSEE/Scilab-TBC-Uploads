clc
clear

//Input data
T1=200+273 //Intial Temperature in K
P1=1.7 //Initial Pressure in bar
P2=1 //Final Pressure in bar
C1=30 //Inlet velocity in m/s
m=1 //Mass flow rate in kg/s
D=0.025 //Nozzle diameter in m
k=1.4 //Adiabatic Constant
R=287 //Specific Gas constant in J/kg-K
Cp=1005 //Specific heat capacity at constant pressure in J/kg-K

//Calculation
p1=P2/P1 //Pressure ratio
T2=T1*p1^((k-1)/k) //Final temperature in K
E1=T1+(C1^2/(2*Cp)) //LHS of Steady flow energy equation
C2=sqrt((E1-T2)*2*Cp) //Exit velocity of the air in m/s
d2=(P2*10^5)/(R*T2) //Density at outlet in kg/m^3
A2=%pi*D^2/4 //Area at outlet in m^2
n=ceil(m/(d2*A2*C2)) //Number of nozzles to be used

//Output
printf('(A)Exit velocity of the air is %3.2f m/s\n (B)Number of nozzles to be used are %1.0f',C2,n)
