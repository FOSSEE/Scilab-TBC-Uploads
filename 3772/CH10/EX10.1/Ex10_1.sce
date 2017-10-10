// Problem no 10.1,Page No.249

clc;clear;
close;

//Consider Equilibrium of joint A
//As there are no Load applied at A members AC and AB have nothing to Balance 
//So they are null members
F_AB=0
F_AC=0

//Consider Equilibrium of joint B

//Applying the summation of horizontal forces  we get
F_DB=4*(cos(45*%pi*180**-1))**-1

//Applying the summation of vertical forces  we get
F_BC=F_DB*sin(45*%pi*180**-1)

//Consider Equilibrium of joint B

//Applying the summation of vertical forces  we get
F_CE=4*(sin(45*%pi*180**-1))**-1

//Applying the summation of horizontal forces  we get
F_DC=F_CE*cos(45*%pi*180**-1)

//Result
printf("The Forces in Each members are as follows:F_AB = %.f kN",F_AB)
printf("\n                                          :F_AC = %.f kN",F_AC)
printf("\n                                          :F_DB %.2f",F_DB);printf(" KN(compression)")
printf("\n                                          :F_BC %.2f",F_BC);printf(" KN(Tension)")
printf("\n                                          :F_CE %.2f",F_CE);printf(" KN(Tension)")
printf("\n                                          :F_DC %.2f",F_DC);printf(" KN (compression)" )
