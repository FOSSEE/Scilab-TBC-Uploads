//Ex4_2 Pg-214
clc

disp("      VR = (V_NoLoad - V_FullLoad)/V_FullLoad*100%")
disp("(a) VR = 0%")
V_FullLoad=20 //full load voltage
V_NoLoad=V_FullLoad//no load voltage
printf("\n V_FullLoad = V_NoLoad= %.0f V \n",V_NoLoad)

disp("(b) VR = 100%")
VR=100 //voltage regulation in %
V_NoLoad=(VR*V_FullLoad)/(100)+V_FullLoad
printf("\n V_NoLoad= %.0f V \n",V_NoLoad)
