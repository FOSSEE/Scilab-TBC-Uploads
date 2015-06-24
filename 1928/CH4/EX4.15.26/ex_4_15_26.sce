//Chapter-4,Example4_15_26,pg 4-39

//for case1
t1=1.8*10^-3                            //thicknesss of plate

d=2.65*10^3                             //density

Y=8*10^10                               //Young's modulus

k=1                                     //consider 1st harmonic

n1=(k/(2*t1))*sqrt(Y/d)                 //formula of natural frequency

printf("       1)natural frequency =")

disp(n1)

printf("Hz")

//for case2

n2=2*10^6                               //frequency

t2=(k/(2*n2))*sqrt(Y/d)                 //arranging formula of natural frequency

t=t1-t2                                 //change in thickness

printf("     2)change in thickness =")

disp(t)

printf("meter")

