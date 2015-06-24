A1=5;//convergent duct inlet area in m^2
V1=10;//inlet velocity in m/s
P1=1.2*10^5; //inlet pressure in N/m^2
T1=330;//inlet temperature in Kelvin
R=287;//gas constant for dry air
D=P1/(R*T1) //density of air in Kg/m^3
V2=30;//outlet velocity in m/s
P2=P1+D*(V1^2-V2^2)/2 //pressure at exit