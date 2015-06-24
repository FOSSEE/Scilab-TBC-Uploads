clear ;
clc;
// Example 1.5
printf('Example 1.5\n\n');
printf('Page No. 11\n\n');
// Solution 

// Given
Cc= 108.0*10^3;// cost of coke in Pound
Cg= 3.6*10^3;// cost of gas in Pound
Ce= 22.5*10^3;// cost of electricity in Pound
Ct= Cc+Cg+Ce;// total cost of fuel in Pound
E= 15*10^3;// total production in tonnes per year
Ic= Cc/E;//Pound per tonne
Ig= Cg/E;//Pound per tonne
Ie= Ce/E;//Pound per tonne
It= Ct/E;//Pound per tonne
printf(' coke cost index is %3.2f Pound per tonne \n',Ic)
printf(' gas cost index is %3.2f Pound per tonne\n',Ig)
printf(' electricity cost index is %3.2f Pound per tonne\n',Ie)
printf(' total cost index is %3.2f Pound per tonne\n',It)
