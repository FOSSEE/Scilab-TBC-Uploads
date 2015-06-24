//Example 7.18
//calculate the rate of heat gain by the liquid.
//Given
di=0.0254       //m, inner diameter of tube
Ti=77           //K, liquid temprature
do=52.5*10^-3   //m, pipe internal diameter
To=270          //K, wall temprature
l=1             //m, length of tube
e1=0.05         //emissivity of tube wall
e2=0.1          //emissivity of pipe wall
e3=0.02         //emissivity for inner surface of radiation field
e4=0.03         //emissivity for outer surface of radiation field
s=5.669*10^-8   //stephen boltzman costantl
//Calculation
ds=(do+di)/2    //m, diameter of radiation shield
Ao=%pi*do*l     //m^2, outer pipe area
As=%pi*ds*l     //m^2, shield area
Ai=%pi*di*l     //m^2, inner pipe area
//View factors
//for the long cylindrical enclosure made up of the outer pipe and the shield
Fso=1    //because outer surface of shield cant see itself
Fos=As/Ao 
Fsi=Ai/As
//now assume 
//(1-e2)/e2+ 1/Fos +Ao*(1-e4)/(As*e4)=x
//(1-e3)/e3 +1/Fsi +(1/Fsi)*(1-e1)/e1=y
x=(1-e2)/e2+ 1/Fos +Ao*(1-e4)/(As*e4)
y=(1-e3)/e3 +1/Fsi +(1/Fsi)*(1-e1)/e1
//solving the  equations for heat transfer from the outer pipe and inner pipe
deff('[x]=f(Ts)','x=(Ao*(To^4-Ts^4)/x)-(Ai*(Ts^4-Ti^4)/x)')
Ts=fsolve(1,f)
Qos=(Ao*s*(To^4-Ts^4))/x
printf("The net rate of heat gain of tube is %f W",Qos)
