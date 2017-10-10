
//example 4.2.1
//Calculate the Flux Density and Power received 

//Variables
clc
clear
D = 40000
gain = 17              //gain  is in dB
Gt = 50
A = 10                            //effective area of antenna
Pt = 10                           //transmitted power
R = 4*(10)^7

//Calculation
F=(Pt*Gt)/(4*%pi*R^2)             //flux density equation 
Pr = Pt/A                            //Received Power

//Result
printf("The flux density is %f Watts per sqm \n",F)
printf("The power received by antenna is %f Watts",Pr)
