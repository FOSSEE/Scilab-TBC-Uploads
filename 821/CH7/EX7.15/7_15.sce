c=0.1;//concentration of the solution//
Kb=1.8*10^-5;
printf('The value of a should be calculated first using Kb=(c*a^2)/(1-a)\nThis gives rise to a quadratic equation which can be solved to obtain the value of a.');
printf('\nUsually it is permissible to use approximation methods if K<10^-5\nOne can neglect a in comparison to 1 and solve for a.\nA better way is to use the method of succesive approximations.\nThis will be illustrated using the above equation');
printf('\nFirst find the approximate value of a by neglecting the value of a in comparison with 1.\nLet the approximate value be a1');
a1=1.342*10^-2;
a2=1.332*10^-2;
printf('\nWe repeat this procedure till 2 consecutive values of a do not differ significantly.');
a3=1.332*10^-2;
OH=a3*c;//concentration of OH- in the solution//
printf('\nSince the values of a2 and a3 are the same the correct value of a=1.332*10^-2\nThe approximate value is greater than the correct value by about 1percent.');
printf('\nThe concentration of OH- =%f=1.332*10^-3M',OH); 
