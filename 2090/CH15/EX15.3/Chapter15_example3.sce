clc
clear
//Input data
Vs=0.003;//Swept volume in m^3
bmep=9;//Brake mean effective pressure in bar
N=4000;//The speed of the engine in rpm
ni=30;//Indicated thermal efficiency in percent
nm=90;//Mechanical efficiency in percent
bmep1=12;//The brake mean effective pressure of other engine in bar
N1=4000;//The speed of other engine in rpm
ni1=25;//The indicated thermal efficiency of other engine in percent
nm1=91;//The mechanical efficiency of other engine in percent
m=200;//The mass of naturally aspired engine in kg
m1=220;//The mass of supercharged engine in kg
CV=44000;//The calorific value of the fuel in kJ/kg

//Calculations
bp=(bmep*10^5*Vs*N)/(2*60*1000);//The brake power in kW
ip=bp/(nm/100);//The indicated power in kW
mf=(ip)/((ni/100)*CV);//Mass flow rate of fuel in kg/s
bp1=(bmep1*10^5*Vs*N1)/(2*60*1000);//The brake power for supercharged engine in kW
ip1=bp1/(nm1/100);//The indicated power for supercharged engine in kW
mf1=ip1/((ni1/100)*CV);//Mass flow rate of fuel for supercharged engine in kg/s
mf2=mf*3600;//Mass flow rate of fuel per hour in kg/h
mf3=mf1*3600;//Mass flow rate of fuel per hour in supercharged engine in kg/h
x=[(200/90)-(220/120)]/[(43.2/120)-(27.27/90)];//Maximum hours of fuel supply foe test in hrs

//Output
printf (' The maximum hours required for supply of sufficient fuel = %3.3f hr ',x)
