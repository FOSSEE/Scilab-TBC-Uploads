//example 3
//Effect of Boiler Pressure and Temperature on Efficiency
clear
clc
P1=10 //pressure of steam in state 1 in kPa
P2=3000 //pressure of steam in state 2 in kPa
P3=3000 //pressure of steam in state 3 in kPa
P4=10 //pressure of steam in state 4 in kPa
T3=350 //temp. of state in state 3 in celsius
h3=3116.1 //specific heat enthalpy in state 3 in kJ/kg
s3=6.7450 //specific entropy in state 3 in kJ/kg-K
h1=191.81 //specific heat enthalpy in state 1 in kJ>kg
v1=0.00101 //specific volume in state 1 in m3>kg
wpumpin=3.02 //work done by the pump in kJ/kg
h2=h1+wpumpin //specific heat enthalpy in state 2 in kJ/kg
s3=6.7450 //specific entropy in state 3 in kJ/kg-K
s4=s3 //specific entropy in state 4
sf=0.6492 //in kJ/kg-K
sfg=7.4996 //in kJ/kg-K
x4=(s4-sf)/sfg //quality of steam in state 4
hf=191.81 // kJ/kg
hfg=2392.1 //kJ/kg
h4=hf+x4*hfg //specific heat enthalpy in state 4 in kJ/kg
qin=h3-h2 //heat coming in in kJ/kg
qout=h4-h1 //heat going out in kJ/kg
n1=1-qout/qin //thermal efficiency of power plant
disp('the thermal efficiency if steam is superheated to 600°C instead of 350°C')
h32=3682.8 //Specific enthalpy in state 3 in kJ/kg
h42=2380.3 //Specific enthalpy in state 3 in kJ/kg
qin2=h32-h2 //heat coming in in kJ/kg
qout2=h42-h1//heat going out in kJ/kg
n2=1-qout2/qin2 //thermal efficiency under given conditions
disp('the thermal efficiency if the boiler pressure is raised to 15 MPa while the turbine inlet temperature is maintained at 600°C')
h23=206.95 //Specific enthalpy in state 2 in kJ/kg
h43=2115.3 //Specific enthalpy in state 4 in kJ/kg
h33=3583.1 //Specific enthalpy in state 3 in kJ/kg
qin3=h33-h23 //heat coming in in kJ/kg
qout3=h43-h1 //heat going out in kJ/kg
n3=1-(qout3/qin3) //thermal efficiency under given conditions
printf("\n Hence, the thermal efficiency of this power plant if the steam is uperheated to 600 C is = %.3f. \n",n1);
printf("\n Hence, the thermal efficiency of this power plant if the steam is uperheated to 350 C is = %.3f. \n",n2);
printf("\n Hence, the thermal efficiency if the boiler pressure is raised to 15 MPa while the turbine inlet temperature is maintained at 600°C. is = %.3f. \n",n3);