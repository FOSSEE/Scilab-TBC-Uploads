clear ;
clc;
// Example 27.6
printf('Example 27.6\n\n');
//page no. 853
// Solution 

// Given 
m_water = 1 ;// Mass flow rate of water -[lb/min]
P1 = 100 ;// Initial pressure - [psia]
P2 = 1000 ;// Final pressure - [psia]
T1 = 80 + 460 ;// initial temperature - [degree Rankine]
T2 = 100 + 460 ;// final temperature - [degree Rankine]
h = 10 ;// Difference in water level between entry and exit of stream-[ft]
g = 32.2 ;// Accleration due to gravity - [ft/ square second]
gc = 32.2 ;//[(ft*lbm)/(lbf*square second)]

// The mechanical energy balance reduces to W = PV_work + del_PE ....(A)
// From steam table , specific volume of liquid water at 80 and 100 degree F is noted , according to book it is as follows-
v1 = .01607 ;// specific volume of liquid water at 80 degree F -[cubic feet/lbm]
v2 = .01613 ;// specific volume of liquid water at 100 degree F -[cubic feet/lbm] 
// But for pratical purposes wwater is taken to be incompressible and specific volume can be taken as v, ith following value
v= 0.0161 ;// -[cubic feet/lbm]

del_PE = (h*g)/(gc*778) ;// Change in potential energy - [Btu/lbm]
PV_work = integrate('(v)*(12^2/778)','P',P1,P2) ;// PV work done  -[Btu/lbm]
//From eqn. (A)
W = PV_work + del_PE ;// Work per minute required to pump 1 lb water per minute - [Btu/lbm]

printf('\n Work per minute required to pump 1 lb water per minute is %.2f Btu/lbm .\n ',W);