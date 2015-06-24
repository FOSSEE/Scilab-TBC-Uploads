//Chapter-11, Example 11.10, Page 494
//=============================================================================
clc
clear

//INPUT DATA
m=50;//Mass of vapour per hour
n=100;//Number of tubes
D=0.01;//Diameter of the tube in m
L=1;//Length of the tube in m
n1=10;//Array of 10*10

//CALCULATIONS
mr=((0.725/1.13)*(L/(n1*D))^0.25);//Ratio of horizontal and vertical position 
mv=(m/mr);//Mass flow rate in the vertical position in kg/h

//OUTPUT
mprintf('Mass flow rate in the vertical position is %3.2f kg/h',mv)

//=================================END OF PROGRAM==============================
