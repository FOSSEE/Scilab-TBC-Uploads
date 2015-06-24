//Chapter-4, Illustration 26, Page 221
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
a1=30;//Nozzle angle in degrees
Ca=180;//Axial velocity in m/s
U=280;//Rotor blade speed in m/s
R=0.5;//Degree of reaction

//CALCULATIONS
a1n=90-a1;//Nozzle angle measured from axial direction in degrees
Cx1=Ca*tand(a1n);//Whirl velocity in m/s
b1=atand((Cx1-U)/Ca);//Blade angle at inlet in degrees
b2=a1n;//Blade angle at exit in degrees

//OUTPUT
mprintf('Blade angle at inlet is %3.0f degrees \n Blade angle at exit is %3.0f degrees',b1,b2)









//==============================END OF PROGRAM=================================
