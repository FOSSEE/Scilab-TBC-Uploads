//Ex1_5 Pg-45
clc
disp("Refer to the figure 1.55")
disp("(a) R_L varies from 1 ohm to 10 ohm.")
disp("Currents for two extreme values of R_L are")
Vs=10 //supply voltage
RL1=1 //resistance RL1
Rs=100 //source resistance
IL1=(Vs/(RL1+Rs))
RL2=10
IL2=(Vs/(RL2+Rs))
per_var_cur=((IL1-IL2)/IL1)*100
printf("\n Percentage variation in current = %.2f %%\n",per_var_cur)//answer in the text book took a .3 decimal round off value
disp("   Now,load voltage for the two extreme values of R_L are")
VL1=IL1*RL1
VL2=IL2*RL2
per_var_vol=((VL2-VL1)/VL2)*100
printf("\n Percentage variation in current = %.2f %%\n",per_var_vol)

disp("(b) R_L varies from 1 k-ohm to 10 k-ohm              (Figure 1.55(b))")
disp("Currents for the two extreme values R_L are")
RL11=1000
IL11=(Vs/(RL11+Rs))
RL22=10000
IL22=(Vs/(RL22+Rs)) //mistake in book value
per_var_cur11=((IL11-IL22)/IL11)*100
printf("\n Percentage variation in current = %.2f %%\n",per_var_cur11) //mistake in book value