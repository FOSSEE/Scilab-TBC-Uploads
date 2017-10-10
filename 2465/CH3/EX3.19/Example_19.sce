//Chapter-3,Example 19,Page 62
clc;
close;

energy= (100*10^6)*24*3600    //energy comsumed in city in a day in Joule

efcy=20/100   //efficiency of reactor

energy_r = energy/efcy    //energy required per day

energy_rl=200*1.6*10^-13   //energy released per nuclide

n = energy_r/energy_rl    //number of U(235) to be fissioned 

//6.023*10^26 atoms of U(235) are present in 235 kg
//n  atoms of U(235) are present in

m=235*n/(6.023*10^26)

printf('the amount of fule required for one day operation is %.2f kg',m)
