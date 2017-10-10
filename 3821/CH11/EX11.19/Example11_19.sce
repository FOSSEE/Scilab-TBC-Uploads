///Chapter No 11 Steam Boilers
////Example 11.19 Page No 252
///Find Velocity of the flue gases in the chimney
//Input data
clc;
clear;
H2=38;              //Stack height in m
d1=1.8;             //Stack diameter in m
ma1=18;             //Flue gases per kg of the fuel burnt
Tg1=277+273;        //Average temp of the flue gases in degree celsius
Ta1=27+273;         //Temperature of outside air in degree celsius
h11=0.4;            //Theorical draught is lost in friction in %
g1=9.81;
pi1=3.142

//Calculation
H3=H2*(((Tg1/Ta1)*(ma1/(ma1+1))-1)); //Theoretical draught produced in hot gas column in m
gp1=0.40*H3;                     //Draught is lost in friction at the grate and passing in m
hgc1=H3-gp1;                      //Actual draught produced in hot gas column in m
V1=sqrt(2*g1*hgc1);               //Velocity of the flue gases in the chimney in m/s
rhog1=((353*(ma1+1))/(ma1*Tg1));    //Density of flue gases in Kg/m^3
mg1=rhog1*((pi1/4)*d1^2)*V1;        //Mass of gas fowing throgh the chimney in Kg/s


//Output
printf('Theoretical draught produced in hot gas column= %f m \n',H3);
printf('Draught is lost in friction at the grate and passing= %f m \n',gp1);
printf('Actual draught produced in hot gas column=%f m \n',hgc1);
printf('Velocity of the flue gases in the chimney=%f m/s \n',V1);
printf('Density of flue gases=%f Kg/m^3 \n',rhog1);
printf('Mass of gas fowing throgh the chimney=%f Kg/s \n',mg1);
