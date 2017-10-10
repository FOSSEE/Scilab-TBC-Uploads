//Example 12.6
P1=1.62*10^6;//Pressure at the hose inlet, see Example 12.5 (N/m^2)
P_h=0.7*10^6;//Pressure at hydrant outlet (N/m^2)
P=P1-P_h;//Pressure increase due to the pump (N/m^2)
Q=40;//Flow rate, See Example 12.5 (L/s)
Q=Q/10^3;//Flow rate (m^3/s)
power=P*Q;//Power (W)
printf('Power supplied by the pump = %0.1f kW',power/1000)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
