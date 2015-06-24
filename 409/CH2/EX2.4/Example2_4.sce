clear ;
clc; 

// Example 2.4
printf('Example 2.4\n\n');
//Page no. 53
// Solution

// (a)
d_w1=1000 ;//[kg/cubic metre]

d1=(1.184*d_w1*1000)/(10^6) ;//[g/cubic centimetre]
printf('(a) Density in g/cubic centimetre is %.4f g/cubic centimetre.\n',d1);

// (b)
d_w2= 62.4 ;//[lbm/cubic feet]

d2=1.184*d_w2/1 ;//[lbm/cubic feet]

printf(' (b) Density in lbm/cubic feet is %.1f lbm/cubic feet.\n',d2);

// (c)
d3=1.184*d_w1 ;//[kg/cubic metre]

printf(' (c) Density in kg/cubic metre is %.1f kg/cubic metre.\n',d3);