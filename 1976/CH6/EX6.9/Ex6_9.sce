
//To determine the number of lamps required
//Page 344
clc;
clear;

A=30*20;                //Area of the building
B=25;                   //Brightness in lumen/sq. metre
CoR=0.25;               //Co - efficient of reflection 
Lwatt=500;              //Lamp Wattage
Ll=8000;                //Lamp lumens output
E=B/CoR;                //Illumination required
BF=0.6;                 //Beam factor
WF=1.2;                 //Waste light factor
MF=0.75;                //Mainteanance factor

Tlumen= E*A*WF/MF;      //Total lumens required

Llumen=Ll*BF;           //Lumens provided by one lamp

NoL=Tlumen/Llumen;      //Number of lamps

printf('The number of lamps required are %g.\n',round(NoL))
