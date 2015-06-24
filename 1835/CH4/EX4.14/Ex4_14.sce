//Chapter-4, Illustration 14, Page 146
//Title: Gears and Gear Drivers
//=============================================================================
clc
clear

//Input data
d=216;//Ring diameter in mm
m=4;//Module in mm

//Calculations
Td=(d/m);//Teeth of wheel D
Tb=Td/4;//Teeth of wheel B
Tb1=ceil(Tb);//Teeth of wheel B
Td1=4*Tb1;//Teeth of wheel D
Tc1=(Td1-Tb1)/2;//Teeth of wheel C
d1=m*Td1;//Pitch circle diameter in mm

//Output
mprintf('Teeth of wheel B is %3.0f \n Teeth of wheel C is %3.0f \n Teeth of wheel D is %3.0f \n Exact pitch circle diameter is %3.0f mm',Tb1,Tc1,Td1,d1)
