//Assume the flow to be isentropic
P=1.013*10^5; //free-stream pressure,N/m^2
V=804.7*5/18; //free-stream velocity,m/s
D=1.23; //density,Kg/m^3
Pa=0.7167*10^5; //pressure at a point on airfoil
R=287 ;//gas constant,J/Kg.K
y=1.4; //specific heat ratio for air
T=P/(D*R) //free stream temperature
a=sqrt(y*R*T)//speed of sound at free stream temperature
M=V/a //free stream mach no.
To=T*(1+(y-1)*M^2/2) //free stream total temperature
Po=P*(1+(y-1)*M^2/2)^(y/(y-1)) //free stream total pressure
Poa=Po;//since the total presssure remains same inisentropic flow
Toa=To;//since the total temperature remains same inisentropic flow

