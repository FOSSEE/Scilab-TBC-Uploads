//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 12 ; Example 12.4
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;
funcprot(0);
f=60;                          //Frequency in Hertz
G=[1000 750 500];              //Rating of unit 1,2 &3 respectively in MVA
R=0.05;                        //Regulation constant of each unit in pu
delP=200;                      //Load increment in MW
SBnew=1000;                    //New MVA base of the entire system

Rnew=R*(SBnew./G);             //Regulation of each generators with common base
beta=sum(1 ./Rnew);             //area frequency response characteristic, beta

printf('The area frequency response characteristic beta is %.2f per unit\n',beta)

delPpu=delP/SBnew;             //Load increment in per unit
delFpu=(-1/beta)*delPpu        //Frequency drop in per unit
delF=delFpu*f;                 //Frequency drop in Hertz

printf('The steady-state frequency drop is %.4f Hz\n',abs(delF))

delPm=delFpu*(-1 ./Rnew);
delPmact=SBnew*delPm;

printf('The increase in turbine mechanical power output of unit1=%.4f pu = %.4f MW\n',delPm(1),delPmact(1))
printf('The increase in turbine mechanical power output of unit2=%.4f pu = %.4f MW\n',delPm(2),delPmact(2))
printf('The increase in turbine mechanical power output of unit3=%.4f pu = %.4f MW',delPm(3),delPmact(3))
