clear ;
clc;
// Example 8.13
printf('Example 8.13\n\n');
printf('Page No. 244\n\n');

//given
T1 = 21;// in degree celcius
t1 = 8;// time in h per day
c = 3.5;// cost in p per unit
C1 = 38;// Total cost in Pound per 10^3 W

T2 = 16;// in degree celcius
t2 = 8;// time in h per day
C2 = 27;// Total cost in Pound per 10^3 W

Save = C1 - C2;// Saving in Pound per 10^3 W
Save_deg = Save/(T1 - T2);// Total Saving in Pound per 10^3 W for each degree drop
Save_per = (Save_deg/C1)*100;// Saving in percent
printf('For each degree drop, an energy saving of %.0f per cent is achieved',floor(Save_per))

