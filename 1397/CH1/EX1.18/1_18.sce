//clc();
clear;
//To determine the diameter of a ring in Newton's rings experiment
D5=0.3;         //diameter of 5th ring in centimetres
D15=0.62;       //diameter of 15th ring in centimetres
//The principle used here is Dm^2-Dn^2=4*lambda*R*(m-n).
//the product lambda*R is constant hence it can be eliminated.
aLHS=D15^2-D5^2;
aRHS=4*(15-5);            //By substituting the values of m and n in the principle equation
bRHS=4*(25-5);            //By substituting the values of m and n in the principle equation
c=bRHS/aRHS;
D25=sqrt((c*aLHS)+D5^2);
printf("diameter of 25th ring is %f cm",D25);

