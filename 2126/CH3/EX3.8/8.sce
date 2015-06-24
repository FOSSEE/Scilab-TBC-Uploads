clc
clear

//input data
T1=333 //Inlet temperature in K
D=0.05 //inner duct diameter in m
f=0.005/4 //frictional factor
L=5 //Length of the pipe in m
Pt=101 //Exit pressure in kPa, Pt=P2 Since flow is choked 
M2=1 //Mach number at exit since pipe is choked 
k=1.4 //Adiabatic constant
R=0.287 //Gas constant in kJ/kg-K

//calculation
X=(4*f*L)/D //frictional constant fanno parameter 
M1=0.6 //Inlet mach number 
t1=1.119 //Temperature ratio at entry from fanno flow gas tables @M1,k
Tt=T1/t1 //Static critical temperature in K
at=sqrt(k*R*10^3*Tt) //Sound velocity in m/s, R in J/kg
Ct=at //air velocity in m/s
d_t=Pt/(R*Tt) //Density at exit in kg/m^3
At=%pi*D^2/4 //Critical area in m^2
m=d_t*At*Ct //Mass flow rate in kg/s

//output
printf('(A)Mach number at inlet is %3.1f \n (B)Mass flow rate is %3.5f kg/s\n (C)Exit temperature is %3.3f K',M1,m,Tt)
