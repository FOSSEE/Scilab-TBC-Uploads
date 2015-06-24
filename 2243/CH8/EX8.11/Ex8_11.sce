clc();
clear;
//Given :
T_half = 5730; // carbon 14 half life in years
Na = 6.023*10^23; // Avogadro constant in nuclei/mole
M = 25;// charcoal mass in gm
mm = 12;// molar mass of carbon 12 in gm/mole
a = 250 ; // disinitegrations per minute  (Carbon 14 activity)
// 1 year = 525949 minutes
lambda = 0.693/(T_half*525949);// disinitegrations per minute per nucleus
N0_1 = (Na/mm)*M ; // Number of nuclei (Carbon 12)
// Carbon 14 to Carbon 12  ratio  = 1.3*10^-12 
N0_2 = 1.3*10^-12*N0_1 ; // Number of nuclei (Carbon 14)
R0 = N0_2*lambda ; // disinitegrations per minute per nucleus
a0 = R0 ; // initial activity
t = log(a0/a)/lambda ;
// 1 year = 525949 minutes
printf("The tree died %d  years ago",t/525949 );
// Result obtained differs from the textbook, because R0 value obtained here is 375.1025, where as in textbook it is 374.  
