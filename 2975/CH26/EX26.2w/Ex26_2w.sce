//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 26_2w

clc;clear;
//Given Data

press_a=100*10^3;   //Pressure at point a (Unit: Pascal)
press_b=100*10^3;   //Pressure at point b (Unit: Pascal)
press_d=200*10^3;   //Pressure at point c (Unit: Pascal)
press_c=200*10^3;   //Pressure at point d (Unit: Pascal)
vol_a=100*10^-6;    //Volume at point a (Unit: m^3)
vol_d=100*10^-6;    //Volume at point b (Unit: m^3)
vol_c=300*10^-6;    //Volume at point c (Unit: m^3)
vol_b=300*10^-6;    //Volume at point d (Unit: m^3)
change_u=0;         //Change in internal energy (Unit: Joules)

//Formula : Work done=pressure X change in volume

//Calculation

wd_ab=press_a*(vol_b-vol_a);    //Calculation of work done by the gas during ab (Unit : Joules)
wd_bc=press_b*(vol_c-vol_b);    //Calculation of work done by the gas during bc (Unit : Joules)
wd_cd=press_c*(vol_d-vol_c);    //Calculation of work done by the gas during cd (Unit : Joules)
wd_da=press_a*(vol_a-vol_d);    //Calculation of work done by the gas during da (Unit : Joules)
tot_wd=wd_ab+wd_bc+wd_cd+wd_da; //Total Work done during the process (Unit: Joules)
change_q=tot_wd+change_u;       //Calculation of total heat rejected during the process( Unit : Joules)


disp(wd_ab,"Total work done during the part ab is (Unit : Joules)");
disp(wd_bc,"Total work done during the part bc is (Unit : Joules)");
disp(wd_cd,"Total work done during the part cd is (Unit : Joules)");
disp(wd_da,"Total work done during the part da is (Unit : Joules)");

disp(change_q,"Total heat rejected by the gas during process is (Unit : Joules)");
