clear ;
clc;
// Example 5.3
printf('Example 5.3\n\n');
//Page no. 111
// Solution

b_rd = 100.0 ;//[kPa]
gp =  64.5*101.3/76.0 ;//[kPa]
p_tnk = b_rd-gp ;//[kPa]
printf(' Absolute Pressure in tank in is %.1f kPa\n',p_tnk);
printf('  Since absolute pressure in tank(%.1f kPa) is less than 20 kPa , the mice probably will not survive. \n',p_tnk);