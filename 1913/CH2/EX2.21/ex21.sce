clc
clear
//Input data
h1=3000;//Enthalpy of the fluid passing at inlet in kJ/kg
h2=2757;//Enthalpy of the fluid at the discharge in kJ/kg
c1=60;//Velocity of the fluid at inlet in m/s
A1=0.1;//Inlet area of the nozzle in m^2
v1=0.187;//Specific volume at inlet in m^3/kg
v2=0.498;//Specific volume at the outlet in m^3/kg
q=0;//Heat loss during the flow is negligable
z=0;//The nozzle is horizontal so change in PE is constant
w=0;//The work done is also negligable

//Calculations
c2=[2*1000*((h1-h2)+(c1^2/2000))]^(1/2);//Velocity at the exit in m/s
m=(A1*c1)/v1;//The mass flow rate in kg/s
A2=(m*v2)/c2;//Area at the exit of the nozzle in m^3

//Output
printf('(a)The velocity at the exit c2 = %3.2f m/s \n (b)The mass flow rate m = %3.2f kg/s \n (c)Area at the exit A2 = %3.4f m^2 ',c2,m,A2)
