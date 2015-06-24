//Chapter-4, Illustration 9, Page 140
//Title: Gears and Gear Drivers
//=============================================================================
clc
clear

//Input data
Tb=25;//Teeth of wheel B
Tc=40;//Teeth of wheel C
Td=10;//Teeth of wheel D
Te=25;//Teeth of wheel E
Tf=30;//Teeth of wheel F
y=-120;//Speed of arm A in clockwise in rpm

//Calculations
x=(-y/4)
Nb=x+y;//Speed of wheel B in rpm
Nf=(-10/3)*x+y;//Speed of wheel F in rpm

//Output
mprintf('Speed of wheel B is %3.0f rpm \n Direction of wheel B is clockwise \n Speed of wheel F is %3.0f rpm \n Direction of wheel F is clockwise',Nb,Nf)








//================================END OF PROGRAM=============================================
