//Example No. 3_23
//Associative law
//Pg No. 58
clear ; close ; clc ;
x = 0.400000*10^40
y = 0.500000*10^70
z = 0.300000*10^(-30)
disp('In book they have considered the maximum exponent can be only 99, since 110 is greater than 99 the result is erroneous')
disp((x*y)*z,'xy_z = ','but in scilab the this value is much larger than 110 so we get a correct result ')
disp(x*(y*z),'x_yz = ')