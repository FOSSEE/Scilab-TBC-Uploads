//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 29_3w

clc;clear;
//Given Data

charge_a=2*10^-6;       //Charge at A(Unit: C)
charge_b=2*10^-6;       //Charge at B(Unit: C)
charge_c=2*10^-6;       //Charge at C(Unit: C)
dis_ac=3*10^-2;         //Distance between A and C (Unit:m)
dis_bc=5*10^-2;         //Distance between B and C (Unit:m)
dis_ab=4*10^-2;         //Distance between A and B (Unit:m)
k=9*10^9                //Value of the coulomb constant (Unit: N m^2/C^2)

//Calculation

force_a_from_b=k*charge_a*charge_b/(dis_ab)^2;          //Calculation of force on A from B (Unit:N)
force_a_from_c=k*charge_a*charge_c/(dis_ac)^2;          //Calculation of force on A from C (Unit:N)

resultant=(force_a_from_b^2+force_a_from_c^2)^(1/2);    //Calculation of the net resultant (Unit:N)
tan_angle=(force_a_from_c/force_a_from_b);              //Calculation of the tan of the angle suspended by the resultant and BA (Unit:unitless)
angle=atand(tan_angle);                                 //Calculation of the angle suspended by the resultant and BA (Unit:degree)

disp(resultant,"The resultant force on the charge at the right angle corner is (Unit: N)");
disp(tan_angle,"Tan of the angle suspended by the resultant and BA is (Unit:unitless)");         //The answer in book is given in fraction but after solving the fraction we get this answer
disp(angle,"Angle suspended by the resultant and BA is (Unit:degree))");
