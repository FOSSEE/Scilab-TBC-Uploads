//Chapter-4, Illustration 10, Page 141
//Title: Gears and Gear Drivers
//=============================================================================
clc
clear

//Input data
Ta=96;//Teeth of wheel A
Tc=48;//Teeth of wheel C
y=-20;//Speed of arm C in rpm in clockwise

//Calculations
x=(y*Ta)/Tc
Tb=(Ta-Tc)/2;//Teeth of wheel B
Nb=(-Tc/Tb)*x+y;//Speed of wheel B in rpm
Nc=x+y;//Speed of wheel C in rpm

//Output
mprintf('Speed of wheel B is %3.0f rpm \n Speed of wheel C is %3.0f rpm',Nb,Nc)









//================================END OF PROGRAM=============================================
