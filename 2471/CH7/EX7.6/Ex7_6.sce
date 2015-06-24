clear ;
clc;
// Example 7.6
printf('Example 7.6\n\n');
printf('Page No. 209\n\n');

// given
P = 150*10^3;// Power of compressor in W
F_load = .78;// full load percentage of the time
Re = .7;//  Heat Recovery
T = 2200;//Compressor operating time in h/year
C = 20*10^-6;// Energy cost in Pound/Wh

H_Re = P*F_load*Re;// in W
printf('Heat recovered is %.0f W \n',H_Re)
E_save = H_Re*T*C;// in Pound/year
printf('Economic Saving is %3.2f Pound per year',E_save)
//Deviation in answer is due to some calculation approximation the book
