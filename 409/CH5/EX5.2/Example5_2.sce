clear;
clc;
// Example 5.2
printf('Example 5.2\n\n');
//Page no. 110
// Solution

b_rd = 28.0 ;//[in. Hg]
p_rd = 51.0 ;//[psia]
p_atm = b_rd*14.7/29.92 ;//[psia]
p_tnk  =  p_atm+p_rd ;//[psia]
printf(' Pressure in tank in psia is %.1f psia\n',p_tnk);