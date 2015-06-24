clc;
//page 534
//problem 10.7

//Given reference frequency for PLL is fref = 0.48 MHz
fref = 0.48 * 10^6;

//Frequency divider N = 2000
N = 2000;

//Output Frequency fout
fout = fref*N;

//Output Frequency favg
favg = (2000*15 + 2001*1)*(0.48/16) * 10^6;

disp('Output frequency is '+string(fout)+' Hz');

//Reference frequency is not subdivided before going to comparator and it is an integer divider in the feedback path the frequency resolution fres = 0.48 * 10^6;
fres = 0.48 * 10^6;

disp('Frequency resolution is '+string(fres)+' Hz');

disp('Output frequency resolution is '+string(favg - fout)+' Hz');

