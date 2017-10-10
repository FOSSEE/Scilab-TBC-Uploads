///Chapter No 11 Steam Boilers
////Example 11.21 Page No 254
///Find Mass of gas fowing throgh the chimney
//Input data
clc;
clear;
mf=8000;                //Average coal consumption in m 
ma=18;                  //Fuel gases formed ccoal fired in m
Tg=270+273;             //Average temp of the chimney of water in degree celsius
Ta=27+273;              //Ambient temp in degree celsius
hw=18;                  //Theoretical draught produced by the chimney in mm
h1=0.6;                 //Draught is lost in friction in H1
g=9.81;
pi=3.142;


//Calculation
H=(hw/((353)*((1/Ta)-((1/Tg)*((ma+1)/ma))))); //Theoretical draught produced in water column in m
H1=H*(((Tg/Ta)*(ma/(ma+1))-1));               //Theoretical draught produced in hot gas column in m
gp=0.6*H1;                                    //Draught is lost in friction at the grate and passing in m
hgc=H1-gp;                                    //Actual draught produced in hot gas column in m 
V=sqrt(2*g*hgc);                              //Velocity of the flue gases in the chimney in m/s
rhog=((353*(ma+1))/(ma*Tg));                  //Density of flue gases in Kg/m^3
mg=mf/3600*(ma+1);                            //Mass of gas fowing throgh the chimney in Kg/s
d=sqrt(mg/(rhog*(pi/4)*V));                  //Diameter of flue gases in Kg/m^3

///Output
printf('Theoretical draught produced in water column= %f m \n ',H);
printf('Theoretical draught produced in hot gas column= %f m \n',H1);
printf('Draught is lost in friction at the grate and passing= %f m \n',gp);
printf('Actual draught produced in hot gas column= %f \n',hgc);
printf('Velocity of the flue gases in the chimney= %f m/s \n',V);
printf('Density of flue gases= %f Kg/m^3 \n ',rhog);
printf('Mass of gas fowing throgh the chimney= %f Kg/s \n ',mg);
printf('Diameter of flue gases= %f Kg/m^3 \n ',d);
