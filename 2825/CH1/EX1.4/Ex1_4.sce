//Ex1_4 Pg-44
clc
disp("Refer to the figure 1.53")
Vs=2 //supply voltage in V
Rs=1 //resistance in ohm
Is=Vs/Rs
printf("\n Current Is = %.0f A \n",Is)
disp("     Internal resistance remains the same but is now connected in parralel with the current sourceIS,as shown in Figure 1.51(a)")
disp("    Now,we connect a load resistance R_L=1 ohm across the terminals of two representations ,and find I_L and V_L.  From Figure 1.54(b) and using the current-divider concept,one obtains")
RL=1 //load resistance in ohm
IL=Is*(Rs/(Rs+RL)) //load current using current-divider
VL=IL*RL //load voltage
printf("\n Load voltage = %.0f V",VL)
printf("\n Load current = %.0f A \n",IL)
disp("From equation 53(b),using the voltage-divider concept,one obtains")
VD_vl=Vs*(RL/(RL+Rs)) //load voltage using voltage divider 
VD_il=VL/RL //load current
printf("\n Load voltage = %.0f V",VD_vl)
printf("\n Load current = %.0f A \n",VD_il)
