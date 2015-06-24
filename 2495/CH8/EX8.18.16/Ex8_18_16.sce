clear
clc
RT_F=0.05913;//in V
pH=7;//
E=0.062;//in V
E1=(E-(RT_F*pH));//in V
E2=0.145;//in V
pH1=(E2-E1)/RT_F;//
printf('pH1=%.1f',pH1)
E=-0.062;//in V
E1=(E-(RT_F*pH));//in V
pH2=(E2-E1)/RT_F;//
printf('\npH2=%.1f',pH2)

//page 499
