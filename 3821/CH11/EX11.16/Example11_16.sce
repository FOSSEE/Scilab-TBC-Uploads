///Chapter No 11 Steam Boilers
////Example 11.16 Page No 247
///Find Theoretical draught produced in water
//Input data
clc;
clear;
hw=1.9;           //Drauhgt water in cm
Tg=290+273;       //Temp of flue gases in degree celsius 
Ta=20+273;        //Ambient temp in degree celsius
ma=22;            //Flue gases formed in kg/Kg of coal
d=1.8;            //Fuel burnt in m
pi=3.142;
g=9.81;

//Calculation
H=(hw/(353*(1/Ta-1/Tg*((ma+1)/ma))))*10; //Theoretical draught produced in water column in m
H1=round(H*(((Tg/Ta)*(ma/(ma+1))-1)));          //Theoretical draught produced in hot gas column n m
V=sqrt(2*g*H1);                     //Velocity of tthe flue gases in the chimney in m/s 
rhog=((353*(ma+1))/(ma*Tg));             //Density  of flue gases in Kg/m^3
mg=rhog*((pi/4)*d^2)*V;                 //Mass of gas flowing through the chimney in Kg/s

//Output
printf('Theoretical draught produced in water column= %f m \n ',H);
printf('Theoretical draught produced in hot gas column= %f m \n',H1);
printf('Velocity of tthe flue gases in the chimney= %f m \n',V);
printf('Density  of flue gases=%f Kg/m^3 \n',rhog);
printf('Mass of gas flowing through the chimney= %f Kg/s \n',mg);
