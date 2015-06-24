//Chapter-4, Illustration 13, Page 145
//Title: Gears and Gear Drivers
//=============================================================================
clc
clear

//Input data
Tp=20;//Teeth of wheel P
Tq=30;//Teeth of wheel Q
Tr=10;//Teeth of wheel R
Nx=50;//Speed of shaft X in rpm
Na=100;//Speed of arm A in rpm

//Calculations
//x+y=-50
//y=100
x=(-Nx-Na)
y=(-2*x+Na);//Speed of Y in rpm

//Output
mprintf('Speed of driven shaft Y is %3.0f rpm \n Direction of driven shaft Y is anti-clockwise',y)
