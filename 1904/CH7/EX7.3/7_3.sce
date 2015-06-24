//To Calculate the Voltage Drop and Verify The Cable Selected
//Page 329
clc;
clear;
pf=0.9; //Power Factor
Vb=120; //Base Voltage
//From The Tables
r=0.334; //Resistance per thousand feet
x=0.0299; //Reactance per thousand feet
K1=0.02613; //Voltage Drop

//Assumed Cable
I=100; //Secodary line Current
Ls=100; //Length of Secondary line in feet

R=r*Ls/1000; // Resistance Value for a 100 feet Line
X=x*Ls/1000; // Reactance Value for a 100 feet Line

VD=I*((R*pf)+(X*sind(acosd(pf)))); //Voltage Drop
VDpu=VD/Vb; //Per unit value
printf('\nThe Cable Selected is of 100 feet, carrying 100A and cable size #2 AWG\n')
printf('The Voltage drop for the above cable is %g pu V\n',VDpu)
printf('The Above Value is Close to the Value(%g pu V) in the table given.\n',K1)
