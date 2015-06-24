//Temperature remains constant from 11 to 14 Km,so we are about to find pressure and density at a height of 11 Km.
T=216.66;//temp from 11 to 14 Km
T1=288.16;//sea level temperature
P1=1.01*10^5;//pressure at sea level in N/m^2
D1=1.23;//density at sea level in Kg/m^3
g=9.8;//earth's gravity in m/s^2
R=287;//gas constant for dry air in J/Kg.K
a=(216.66-288.16)/(1000*(11-0))  //Lapse rate from 0 to 11 Km
P=(P1)*(T/T1)^(-g/(a*R))//pressure at 11 Km
D=(D1)*(T/T1)^(-1*(g/(a*R)+1))//density at 11 Km
//as T is constant from 11 to 14 km we can use isothermal relation
h=14000;h1=11000;//height in meter
P2=P*(%e)^[-g*(h-h1)/(R*T)]//pressure at 14 Km
D2=D*P2/P  //density at 14 Km