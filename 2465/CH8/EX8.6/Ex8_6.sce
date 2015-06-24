//Chapter-8,Example 6,Page 196
clc();
close();

pH= 7.4    //of blood

H= 10^(-pH)

//assume ratio of HCO3-  and  H2CO3 is r

Ka= 4.5*10^-7

//  Ka = [H+]*[HCO3-]/[H2CO3]

r=Ka/H

printf('the ratio of HCO3-  and  H2CO3 is %.f',r)
