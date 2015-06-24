clc;clear;
//Example 15.7
//error of 0.17% in (b) part calulation error in textbook

//given data
Preact=1;
Treact=77+460;
Tprod=1800;

//constants used
Ru=1.986;

//calculation
//CH4 + 3O2 = CO2 + 2H2O + O2
Nreact=4;
Nprod=4;
Pprod=Preact*Nprod/Nreact*Tprod/Treact;
disp(Pprod,'the final pressure in the tank in atm');
//from std. values of heat of formation and ideal gasses in Appendix
//CH4 as m
hfm=-32210;
//O2 as o
hfo=0;
h537o=3725.1;
h1800o=13485.8;
//water as w
hfw=-104040;
h537w=4528;
h1800w=15433;
//carbondioxide as c
hfc=-169300;
h537c=4027.5;
h1800c=18391.5;
Qout=1*(hfm-Ru*Treact)+3*(hfo-Ru*Treact)-1*(hfc+h1800c-h537c-Ru*Tprod)-2*(hfw+h1800w-h537w-Ru*Tprod)-1*(hfo+h1800o-h537o-Ru*Tprod);
disp(Qout,'the heat transfer during this process in Btu/lbmol')
