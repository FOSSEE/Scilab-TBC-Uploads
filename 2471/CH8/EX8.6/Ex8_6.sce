clear ;
clc;
// Example 8.6
printf('Example 8.6\n\n');
printf('Page No. 234\n\n');

//given
T_lamp = 12*10^3;// Output for the tungsten filament lamp in lm per 10^3 W
F_tube = 63*10^3;// Output for the fluorescent tubes in lm per 10^3 W
Save = F_tube - T_lamp;//  in W
printf('Energy saving is %.0f lm per 10^3 W \n',Save)

Save_pcent = (Save/F_tube)*100;
printf('Energy saving per cent is %.0f ',floor(Save_pcent))
