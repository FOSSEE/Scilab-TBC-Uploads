
//Determine the output voltage
//Page 344
clc;
clear;

Area=(5.08*3.75)*(10^-4);       //Area projected by the cathode
Is=12*(10^-6);                  //Sensitivity
Rl=1.5*(10^6);                  // Load of operation

//Function to calculate the output voltage for each case
deff('y=volt(a,b)','y=Area*a*Is*Rl/(b^2)');

//Case 1
CP=60;                          //Lamp intensity
D=1.8;                          //Vertical distance of the lamp from the cell
V1=volt(CP,D);
//Case 2
CP=6;                           //Lamp intensity
D=0.5;                          //Vertical distance of the lamp from the cell
V2=volt(CP,D);
//Case 3
W=100;                          //Wattage of the lamp
eff=20;                         //eficacy of the lamp
CP=W*eff/(4*%pi);               //Lamp intensity
D=2;                            //Vertical distance of the lamp from the cell
V3=volt(CP,D);

printf('The voltage output of the cells are :\n')
printf('a) 60 CP lamp at 1.8m : %g V\n',V1)
printf('b) 6 CP lamp at 0.5m : %g V\n',V2)
printf('c) A 100W lamp having a efficacy of 20 lumens/watt at 2m : %g V\n',V3)


