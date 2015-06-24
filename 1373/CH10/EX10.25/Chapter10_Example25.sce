//Chapter-10, Example 10.25, Page 449
//=============================================================================
clc
clear

//INPUT DATA
e=0.8;//Emissivity of the pipe
D=0.275;//Diameter of the pipe in m
Ts=500+273;//Surface temperature in K
Te=30+273;//Temperature of enclosure in K
D1=0.325;//Diamter of the steel screen in m
e1=0.7;//Emissivity of steel screen
Tsc=240+273;//Temperature of screen in K

//CALCUATIONS
Q=(e*5.67*10^-8*3.14*D*(Ts^4-Te^4))/1000;//Loss of heat per unit length by radiation in kW/m
e2=(1/((1/e)+((D/D1)*((1/e1)-1))));//Equivalent emissivity
Q1=(e2*5.67*10^-8*3.14*D*(Ts^4-Tsc^4))/1000;//Radiant heat exchange per unit length of header with screen in kW/m
R=(Q-Q1);//Reduction in heat by radiation due to the provision of the screen in kW/m

//OUTPUT
mprintf('Loss of heat per unit length by radiation is %3.1f kW/m \nReduction in heat by radiation due to the provision of the screen is %3.2f kW/m',Q,R)

//=================================END OF PROGRAM==============================
