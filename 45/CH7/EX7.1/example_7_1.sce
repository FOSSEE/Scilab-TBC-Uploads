//example 7.1
clear;
clc;
 //for 50 kHz clock
 clk_frq1 = 50000;
 c_t_500 = 1000/clk_frq1;
 //for 8-MHz clock
 clk_frq2 = 8000000;
 c_t_8 = 10000000/clk_frq2;
 printf('Cycle time for 500-kHz clock is %f milliseconds \n',c_t_500);//displaying results 
 printf(' Cycle time for 8-MHz clock is %f micro seconds',c_t_8);
 
 