//To determine the class distribution factors
//Page 50
//Refer diagram of the first example of this chapter
clc;
clear;

Ps=100; //Peak load for street lighting in kW
Pr=1000; //Peak load for Residential in kW
Pc=1200; //Peak Commercial load in kW
P=[Ps,Pr,Pc] //Peaks of various loads

Ls5=0; //Street lighting load at 5.00 PM in kW
Lr5=600; //Residential load at 5.00 PM in kW
Lc5=1200; //Commercial Load at 5.00 PM in kW

Cstreet=Ls5/Ps;
Cresidential=Lr5/Pr;
Ccommercial=Lc5/Pc;
C=[Cstreet,Cresidential,Ccommercial]; //Class distribution for various factors

Fd=(sum(P))/(sum(P*C'));
Dg=(sum(P*C'));
Fc=1/Fd;

printf('a) The class distribution factors factor of:\n')
printf(' i) Street lighting = %g\n ii) Residential = %g\n iii) Commercial =%g\n',C(1),C(2),C(3))
printf(' b) The diversity factor for the primary feeder = %g\n',Fd)
printf(' c) The diversified maximum demand of the load group = %g kW\n',Dg) 
printf(' d) The coincidence factor of the load group = %g\n',Fc)

