clear ;
clc;
// Example 5.5
printf('Example 5.5\n\n');
//Page no. 117
// Solution

p_atm=730.0*29.92/760.0 ;//[in. Hg]
gp= (4.0*29.92)/(2.54*12*33.91) ;//[in. Hg]
p_air=p_atm-gp ;//[in. Hg]
printf(' Pressure of the air is %.1f in. Hg.\n',p_air);