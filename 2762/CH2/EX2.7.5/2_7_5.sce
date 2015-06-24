//Transport Processes and Seperation Process Principles
//Chapter 2
//Example 2.7-5
//Principles of Momentum Transfer and Overall Balances
//given data
//cgs units
V=69.1;//volumetric flow rate in gallon/min
fr1=V*(1/60)*(1/7.481);//converting flow rate in ft3/s
A1=0.0233;//cross section area in ft2 of the pipe
v2=fr1/A1;//vel in ft/s
v1=0;//since the tank is very large
p1=1;//atm pressure
p2=p1;
gc=32.174;
z1=0;//datum
g=32.174;
z2=50;//length of discharge line in ft
rho=114.8;//density of liq soln
F1=10;//friction loss in ft-lb force/lb mass
Ws=(z1*(g/gc))-(z2*(g/gc))+(v1*v1/(2*gc))-(v2*v2/(2*gc))+((p1-p2)/rho)-F1;//shaft work calculated by mechanical energy equation
n=0.65;//efficiency
Wp=(-Ws/n);
m=fr1*rho;//mass flow rate in lbm/s
P=m*Wp*(1/550);//pump horsepower
A2=0.05134;//area of cross section
v3=fr1/A2;
v4=v2;
F2=0;//friction losses in the second pipe is negligible
Pdbyrho=(v3*v3/(2*gc))-(v4*v4/(2*gc))-Ws-F2;
Pdiff=Pdbyrho*(rho/144);//pressure diff in lb force/in2
mprintf("pressure developed by pump = %f psia",Pdiff)
mprintf(" pump horsepower= %f hp",P)
