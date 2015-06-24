clc
clear
//Input data
P1=7;//Inlet pressure of a convergent divergent steam nozzle in bar
T1=275;//Inlet temperature of the nozzle in degrees celcius
P2=1;//Discharge pressure of steam in bar
l=60;//Length of diverging portion of the nozzle in mm
dt=6;//Diameter of the throat in mm
f1=10;//Percent of total available enthalpy drop lost in friction in the diverging portion in percentage
h1=3006.9;//Enthalpy of steam at 7bar pressure and 275 degrees celcius in kJ/kg
ht=2865.9;//Enthalpy at the throat from Moiller chart in kJ/kg
he=2616.7;//Enthalpy at the exit from moiller chart in kJ/kg
vt=0.555;//Specific volume of steam at throat in m^3/kg
Tt=202.8;//Temperature of steam at throat in degrees celcius from moiller chart
ve=1.65;//Volume of steam at exit in m^3/kg

//Calculations
Pt=0.546*P1;//The throat pressure for maximum discharge in bar
hd=h1-ht;//Enthalpy drop upto throat in kJ/kg
Vt=44.7*(hd)^(0.5);//Velocity of steam at throat in m/s
hid=h1-he;//Total isentropic drop from 7 bar,275 degrees celcius to 1 bar in kJ/kg
hda=(1-(f1/100))*(hid);//Actual heat drop in kJ/kg
Ve=44.7*(hda)^(0.5);//Velocity at exit in m/s
At=(3.14/4)*(6/1000)^(2);//Throat area of the nozzle in m^2
m=(At*Vt)/vt;//Mass flow rate at nozzle throat in kg/s
Ae=((m*ve)/Ve)*10^4;//Exit area of the nozzle in cm^2
de=(((Ae*4)/3.14)^(0.5))*10;//Diameter of the nozzle at exit in mm
alpha=atand((de-dt)/(2*60));//Half of the cone angle of the nozzle in degrees
alpha1=2*alpha;//Cone angle of the nozzle in degrees

//Output
printf('(a)Velocity of steam at throat is %3.0f m/s\n (b)Temperature of steam at the throat is %3.1f degrees celcius\n (c)Cone angle of the divergent portion is %3.3f degrees',Vt,Tt,alpha1)
