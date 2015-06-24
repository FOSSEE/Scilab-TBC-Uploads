//Transport Processes and Seperation Process Principles
//Chapter 3
//Example 3.2-1
//Principles of Momentum Transfer and Applications
//given data
rho=1.043;//density of air at 328.5K in kg/m3
v=23;//velocity of air in m/s
D=0.6;//diameter of a cylinder
mu=2.03/100000;//viscosity of air Pa.s
delh=0.205;// 0.205m of water pitot tube reading
rhow=1000;//density of water 
delP=delh*(rhow-rho)*9.80665;//pressure diff and g=9.80655 m/s2
patm=101325;//atm pressure in pascals
p1=patm+0.02008*100000;//absolute pressure+ pressure diff
rhoc=(p1/patm)*1.043;//corrected air density
delH=10.7/1000;//manometer reading, m of water
Cp=0.98;
delP=delH*(rhow-rhoc)*9.80655;//pressure diff in Pa
v=Cp*((2*delP)/rhoc)^0.5;//max vel at center
Re=D*v*rhoc/mu;//Reynolds Number
vr=0.85;//from the given graph the ratio of avg vel/max vel is 0.85
vavg=vr*v;//the average velcity in m/s
mprintf(" average velcity = %f m/s",vavg)
A=(3.14/4)*(D*D);//cross sec area in m2
V=A*vavg;//volumetric flow rate in m3/s
mprintf("volumetric flow rate = %f m3/s",V)
