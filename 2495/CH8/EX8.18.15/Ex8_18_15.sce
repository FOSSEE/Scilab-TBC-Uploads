clear
clc
RT_F=0.05913;//in V
pH=5;//
E1=0.280;//in V
E2=0.6996;//in V
E=(E1-E2)+(RT_F*pH);//in V
printf('E=%.4f V',E)
E=0;//
pH=(E-(E1-E2))/RT_F;//
printf('\npH=%.1f',pH)
pH=7.5
E=(E1-E2)+(RT_F*pH);//in V
printf('\nE=%.4f V',E)

//page 489
