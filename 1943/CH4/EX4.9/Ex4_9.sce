
clc
clear
//Input data
Wf=10;//Coal rate in t/h
C=78;//The mass of carbon present in the coal according to coal analysis on mass basis in %
H=3;//The mass of hydrogen present in the coal according to coal analysis on mass basis in %
O=3;//The mass of oxygen present in the coal according to coal analysis on mass basis in %
S=1;//The mass of sulphur present in the coal according to coal analysis on mass basis in %
M=7;//The mass of moisture present in the coal according to coal analysis on mass basis in %
A=8;//The mass of ash present in the coal according to coal analysis on mass basis in %
E=0.3;//Excess air in percentage
p=180;//Plenum chamber pressure in mm water gauge
nm=0.6;//Mechanical efficiency of the fan
ta=30;//Room temperature in degree centigrade
R=0.287;//Real gas constant
P=101.325;//Atmospheric pressure in kPa
g=9.812;//gravitational force constant m/s^2

//Calculations
Wth=(11.5*(C/100))+(34.5*[(H/100)-(O/(8*100))])+(4.3*(S/100));//Theoretical air required per kg fuel in kg air/kg fuel
WA=Wth*(1+0.3);//Actual air required per kg fuel in kg air/kg fuel
Va=(R*(273+ta))/P;//Volume flow rate of air in m^3/kg
FD=((WA*Wf*1000*Va*p*g)/(3600*nm))/1000;//FD fan motor capacity in kW

//Output
printf('The required motor capacity needed for the FD fan is %3.2f kW ',FD)
