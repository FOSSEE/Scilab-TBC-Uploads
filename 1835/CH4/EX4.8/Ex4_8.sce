//Chapter-4, Illustration 8, Page 139
//Title: Gears and Gear Drivers
//=============================================================================
clc
clear

//Input data
Tb=70;//Teeth of wheel B
Tc=25;//Teeth of wheel C
Td=80;//Teeth of wheel D
Na=-100;//Speed of arm A in clockwise in rpm
y=-100//Arm A rotates at 100 rpm clockwise

//Calculations
Te=(Tc+Td-Tb);//Teeth of wheel E
x=(y/0.5)
Nc=(y-(Td*x)/Tc);//Speed of wheel C in rpm

//Output
mprintf('Speed of wheel C is %3.0f rpm \n Direction of wheel C is anti-clockwise',Nc)









//================================END OF PROGRAM=============================================
