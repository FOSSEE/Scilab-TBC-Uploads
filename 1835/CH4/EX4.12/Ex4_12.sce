//Chapter-4, Illustration 12, Page 144
//Title: Gears and Gear Drivers
//=============================================================================
clc
clear

//Input data
Te=30;//Teeth of wheel E
Tb=24;//Teeth of wheel B
Tc=22;//Teeth of wheel C
Td=70;//Teeth of wheel D
Th=15;//Teeth of wheel H
Nv=100;//Speed of shaft V in rpm
Nx=300;//Speed of spindle X in rpm

//Calculations
Nh=Nv;//Speed of wheel H in rpm
Ne=(-Th/Te)*Nv;//Speed of wheel E in rpm
Ta=(Tc+Td-Tb);//Teeth of wheel A
//x+y=-50
//y=300
x=(Ne-Nx)
Nz=(187/210)*x+Nx;//;//Speed of wheel Z in rpm

//Output
mprintf('Speed of wheel Z is %3.3f rpm \n Direction of wheel Z is opposite to that of X',Nz)
