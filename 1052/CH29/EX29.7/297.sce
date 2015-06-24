clc;
//Example 29.7
//page no 461
printf("\Example 29.7 page no 461\n\n");
//a reactor is located in a relatively large laboratory,the reactor  can emit as much as of hydrocarbon into the room if a safety valves ruptures
v=1100//volume of reactor,m^3
T=295//temperature of reactor,K
v_s=0.0224//volume of gas at STP,m^3
T_s=273//standard temperature,K
n_air=(v/v_s)*(T_s/T)//total gmoles of air in the room
printf("\n n_air=%f gmol",n_air);
v_r=0.75//Hydrocarbon emit by reactor,gmol
x_hc= (v_r/(n_air + v_r))*10^9//mole fraction of hydrocarbon in the room,parts per billion 
printf("\n mole fraction of HC x_hc=%f ppb ",x_hc); 
 
