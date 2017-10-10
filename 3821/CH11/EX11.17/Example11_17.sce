///Chapter No 11 Steam Boilers
////Example 11.17 Page No 248
///Find Actual draught produced in hot gas 
//Input data
clc;
clear;
mf1=8000;           //Average coal consumption in Kg/h
ma1=19;            //Flue gases formed in Kg/Kg
Tg1=270+273;       //Average temperature of the chimney in degree celsius
Ta1=27+273;        //Ambient temperature in degree celsius
hw1=18;            //Theoretical draught produced by the chimney in mm
h11=0.6;           //Draught is lost in friction H1
g1=9.81;
pi1=3.142;


//Calculation
H2=(hw1/(353*(1/Ta1-1/Tg1*((ma1+1)/ma1)))); //Theoretical draught produced in water column in m
H3=H2*(((Tg1/Ta1)*(ma1/(ma1+1)))-1);        //Theoretical draught produced in hot gas column in m
gp1=h11*H3;                             //Draught is lost in friction at the grate and passing in m
hgc1=H3-gp1;                            //Actual draught produced in hot gas column in m
V1=sqrt(2*g1*(hgc1));                    //Velocity of the flue gases in the chimney in m/s
rhog1=((353*(ma1+1))/(ma1*Tg1));          //Density of flue gases in Kg/m^3
mg1=((mf1/3600)*ma1);                    //Mass of gas fowing throgh the chimney in Kg/s
d1=sqrt(mg1/(rhog1*(pi1/4)*V1));           //Diameter of the chimney in m


//Output
printf('Theoretical draught produced in water column=%f m \n',H2);
printf('Theoretical draught produced in hot gas column=%f m \n',H3);
printf('Draught is lost in friction at the grate and passing=%f m \n',gp1);
printf('Actual draught produced in hot gas column=%f m \n ',hgc1);
printf('Velocity of the flue gases in the chimney=%f \n',V1);
printf('Density of flue gases=%f Kg/m^3 \n',rhog1);
printf('Mass of gas fowing throgh the chimney=%f Kg/s \n',mg1);
printf('Diameter of the chimney=%f m \n',d1);
