//Transport Processes and Seperation Process Principles
//Chapter 3
//Example 3.3-2
//Principles of Momentum Transfer and Applications
//given data
Ps=741.7;//suction pressure in mm hg
Pd=769.6;//discharge pressure in mm hg
Patm=760;//atmospheric pressure in mm Hg
rho1=28.97*(1/22.414)*(273.2/366.3)*(Ps/Patm);//air density at suction: mol wt= 28.97 kg air/kg mol for 22.414 m3/kg mol at 101.3 kPa and 273.2 K
rho2=rho1*(Pd/Ps);
rhoavg=(rho1+rho2)/2
V=28.32;//volumetric flow rate in m3/s
Ts=294.1;//temp at suction
mdot=V*(1/60)*(1/22.414)**(273.2/Ts)*28.97;//mass flow rate of gas
Patm=760;//atm pressure in mm Hg
Hp=((Pd-Ps)/Patm)*(101325/rhoavg);//pressure head in J/kg
v1=0;//air is stationary
v2=45.7;//discharge velocity in m/s
vd=(((v2^2)-(v1^2))/2);//developed velocity
z1=0;
sumF=0;
Ws=Hp+vd;//substituting and solving for Ws by mechanical energy balance equation for a closed system in J/kg
n=60/100;//efficiency given is 60%
bkW= (Ws*mdot)/(n*1000);// brake kW
mprintf(" brake kW= %f hP",bkW)
