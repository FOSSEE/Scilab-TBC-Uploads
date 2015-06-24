clear
clc

//Example 15.1
disp('Example 15.1')


s=%s;
Gp1=4/((4*s+1)*(2*s+1));Gp2=1;Gd2=1;Gd1=1/(3*s+1);
Gm1=0.05;Gm2=0.2;
Gv=5/(s+1);
Kc2=4;
Ys=Kc2*Gv*Gp1*Gm1/(1+Kc2*Gv*Gm2);

Routh=routh_t(Ys,poly(0,"Kc1")); // produces routh table for polynomial 1+Kc*Ys
disp(Routh)
K1=roots(numer(Routh(3,1)));
K2=roots(numer(Routh(4,1)));

mprintf('\n Kc1 lies between %f and %f \n for cascade system to be stable', K2,K1)

Ys2=Gv*Gp2*Gp1*Gm1;
Routh2=routh_t(Ys2,poly(0,"Kc1")); // produces routh table for polynomial 1+Kc*Ys
disp(Routh2)
K1_2=roots(numer(Routh2(3,1)));
K2_2=roots(numer(Routh2(4,1)));

mprintf('\n Kc1 lies between %f and %f \n for conventional system to be stable', K2_2,K1_2)



//We cannot find offset symbolically in Scilab because scilab does not support
//handling of two variables in single polynomial
//To find this limit one can use Sage
//However in this case the calculations can be done in a very easy way by hand
//and hence do not require to be computed from Sage



