//Example 20.10
P_ave=100*10^6;//Average power (W)
V_rms=200*10^3;//Rms voltage (V)
I_rms=P_ave/V_rms;//Rms current (A)
printf('a.Current required = %0.1f A',I_rms)
R=1;//Resistance (ohm)
P_ave_b=I_rms^2*R;//Power dissipated (W)
printf('\nb.Power dissipated by transmission lines = %0.1f kW',P_ave_b/1000)
percent_loss=P_ave_b/P_ave*100;
printf('\nc.Percentage of power lost = %0.3f%%',percent_loss)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
