//Book - Power System: Analysis & Design 5th Edition
//Authors - J. Duncan Glover, Mulukutla S. Sarma, and Thomas J. Overbye
//Chapter - 12 ; Example 12.9
//Scilab Version - 6.0.0 ; OS - Windows

clc;
clear;

B11=1.5e-4; B12=2e-5; B22=3e-5;               // Loss coefficients
lamda=16;                                     //Area incremental cost in $/MWhr

e1=[20.8e-3 32e-5 6];       //Coefficients of incremental operating cost equation1
e2=[32e-5 18.96e-3 8];      //Coefficients of incremental operating cost equation2

P1=(e2(2)*e1(3)-e1(2)*e2(3))/(e2(2)*e1(1)-e1(2)*e2(1));   //Solution of P1 from incremental cost equations
P2=(e2(1)*e1(3)-e1(1)*e2(3))/(e1(2)*e2(1)-e2(2)*e1(1));   //Solution of P2 from incremental cost equations

Pl=B11*P1^2+B12*P1*P2+B22*P2^2;            //Total losses

Pt=P1+P2-Pl;                               //Total demand

CT=10*P1+8e-3*P1^2+8*P2+9e-3*P2^2;        // Cost equation taken from example 12.6

printf('The output of each unit are given by P1=%d MW and P2=%d MW\n',P1,P2)
printf('The total transmission loss is %.2f MW\n',Pl)
printf('The total demand is %.2f MW\n',Pt)
printf('The total operation cost is %.2f $/hr',CT)



