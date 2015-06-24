clear ;
clc;
// Example 1.4
printf('Example 1.4\n\n');
printf('Page No. 10\n\n');
// Solution 

// Given
mc= 1.5*10^3;// coke consumption in tonnes
mg= 18*10^3;// gas consumption in therms
me= 1*10^9;// electricity consumption in Wh
Cc1= 72;// cost of coke in Pound per tonne
Cg1= 0.20;// cost of gas in Pound per therm
Ce1= 2.25*10^-5 ;// cost of electricity in Pound per Wh
Cc= mc*Cc1;//in Pound
Cg= mg*Cg1;//in Pound
Ce= me*Ce1;//in Pound
Ct= Cc+Cg+Ce;//in Pound
printf('cost of coke consumption is %.0f Pound \n',Cc)
printf('cost of gas consumption is %.0f Pound \n',Cg)
printf('cost of electricity consumption is %.0f Pound \n',Ce)
printf('total cost is %3.0f Pound \n',Ct)
