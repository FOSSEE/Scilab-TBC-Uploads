clc
clear
//input data
U=300//Blade speed of turbine in m/s
m=2.5//Mass flow rate in kg/s
T0=773//Gas temperature at turbine inlet in K
T2=573//Gaas temperature at turbine outlet in K
a1=70//Fixed blade outlet angle in degree
Ca=200//Axial velocity in m/s
Cp=1.005//Specific heat of gas at constant pressure in kJ/kg.K
//calculations
W=m*Cp*(T0-T2)//Power developed by turbine in kW
Wm=Cp*(T0-T2)//Stage work done per unit mass flow rate in kJ/kg
Wx1Wx2=Wm*10^3/U//Sum of whirl components of velocity at inlet and outlet in m/s
Wx1=(Ca*tand(a1))-U//Inlet whirl velocity in m/s
Wx2=Wx1Wx2-Wx1//Outlet whirl velocity in m/s
R=(Wx2-Wx1)/(2*U)//Degree of reaction
Wx2Wx1=Wm*10^3*R//Energy input due to whirl component velocity in (m/s)^2
C1=Ca/cosd(a1)//Velocity of steam at exit from nozzle in m/s 
nb=(Wm*10^3)/(((C1^2)/2)+Wx2Wx1)//Blade efficiency

//output
printf('(a)Power developed by turbine is %3.1f kW\n(b)Degree of reaction is %3.3f\n(c)Blade efficiency is %3.4f\n',W,R,nb)
