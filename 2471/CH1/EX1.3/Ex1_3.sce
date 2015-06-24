clear ;
clc;
// Example 1.3
printf('Example 1.3\n\n');
printf('Page No. 10\n\n');
// Solution 

// Given
Et = 100*10^3;// total energy production in tonnes per annum
Eo= 0.520*10^9;// oil consumption in Wh
Eg= 0.146*10^9;// gas consumption in Wh
Ee= 0.995*10^9;// electricity consumption in Wh
Io= Eo/Et;
Ig= Eg/Et;
Ie= Ee/Et;
Et1= Eo + Eg + Ee;// total energy consumption
It= Et1/Et;
printf('oil energy index is %3.0f Wh per tonne \n',Io)
printf('gas energy index is %3.0f Wh per tonne \n',Ig)
printf('electricity energy index is %3.0f Wh per tonne \n',Ie)
printf('total energy index is %3.0f Wh per tonne ',It)

