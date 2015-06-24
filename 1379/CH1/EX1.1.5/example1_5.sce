

//exapple 1.5 
clc; funcprot(0);
// Initialization of Variable
//part 1
a=1/2*(1-1/sqrt(2));
disp(a*100, "The percent value of d for which where pitot tube is kept show average velocity in streamline flow in (%):");
//part 2
a=(49/60)^7/2;
disp(a*100, "The percent value of d for which where pitot tube is kept show average velocity in turbulent flow in (%):");
//part 3
//on equating coefficient of r
y=a*2;//y=a/100*2*r
s=1-y;//s=r-y
//on equating coeff. of 1/4/mu*del(P)/del(l)
E=(1-s^2-.5)/.5;
disp(E , "The erreor shown by pitot tube at new position if value of streamlined flow flow was to be obtained in (%) :");
disp("The - sign indicates that it will display reduced velocity than what actually is");

