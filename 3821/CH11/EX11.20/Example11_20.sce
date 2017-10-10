///Chapter No 11 Steam Boilers
////Example 11.20 Page No 253
////Find Density of flue gases
//Input data
clc;
clear;
hw1=19;           //Draught produced water in cm
Tg1=290+273;      //Temperature of flue gases in degree celsius
Ta1=20+273;       //Ambient temperature  in degree celsius
ma1=22;           //Flue gases formed  per kg of fuel burnt in kg/kg of coal 
d1=1.8;           //Diameter of chimney
g1=9.81;
pi1=3.142


//Calculation
H2=(hw1/((353)*((1/Ta1)-((1/Tg1)*((ma1+1)/ma1))))); //Theoretical draught produced in hot gas column in m
H3=round(H2*(((Tg1/Ta1)*(ma1/(ma1+1))-1)));               //Draught is lost in friction at the grate and passing in m
V1=(sqrt(2*g1*H3));                          //Velocity of the flue gases in the chimney in m/s
rhog1=((353*(ma1+1))/(ma1*Tg1));                  //Density of flue gases in Kg/m**3
mg1=rhog1*((pi1/4)*d1^2)*V1;                      //Mass of gas fowing throgh the chimney in Kg/s


//Output
printf('Theoretical draught produced in hot gas column= %f m \n',H2);
printf('Draught is lost in friction at the grate and passing=%f m \n',H3);
printf('Velocity of the flue gases in the chimney= %f m/s \n',V1);
printf('Density of flue gases=%f Kg/m^2 \n',rhog1);
printf('Mass of gas fowing throgh the chimney= %f Kg/s \n',mg1);
