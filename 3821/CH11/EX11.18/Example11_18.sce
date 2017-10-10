///Chapter No 11 Steam Boilers
////Example 11.18 Page No 251
///Find Actual draught produced in hot gas
//Input data
clc;
clear;
H2=24;                  //Chimney height in m
Ta1=25+273;             //Ambient temperature in degree celsius
Tg1=300+273;            //Temp of flue gases passing through the chimney in degree celsius
ma1=20;                 //Combustion space of fuel burnt in Kg/kg of fuel
g1=9.81;

//Calculation
hw1=((353*H2)*((1/Ta1)-((1/Tg1)*((ma1+1)/ma1)))); //Theoretical draught produced in water column in m
                                                //Calculation mistake in book of hw1 it is correct according to data &calculation
H3=H2*(((Tg1/Ta1)*(ma1/(ma1+1))-1));             //Theoretical draught produced in hot gas column in m
H4=0.5*H3;                                       //Draught is lost in friction at the grate and passing in m
hgc1=H3-H4;                                      //Actual draught produced in hot gas column in m
V1=sqrt(2*g1*H4);                               //Velocity of the flue gases in the chimney in m/s


//Output
printf('Theoretical draught produced in water column=%f m \n',hw1);
printf('Theoretical draught produced in hot gas column= %f m \n',H3);
printf('Draught is lost in friction at the grate and passing=%f m \n ',H4);
printf('Actual draught produced in hot gas column= %f m \n',hgc1);
printf('Velocity of the flue gases in the chimney= %f m/s \n',V1);
