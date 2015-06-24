clc
disp("Example 14.10")
printf("\n")

s=%s;
//Applying KVL equation to the two loops we get
//V1=3*I1+3*(I1+I2)
//V2=7*I1+3*(I1+I2)+2*I2

//On solving we get
disp("6*I1+3*I2=V1         (1)");
disp("10*I1+5*I2=V2        (2)");

//The equations which contain Z parameters are
//V1=Z11*I1+Z12*I2
//V2=Z21*I1+Z22*I2

//On comparing (1) and (2) with above equations
Z11=6;
Z12=3;
Z21=10;
Z22=5;

disp(Z11,"Z11=")
disp(Z12,"Z12=")
disp(Z21,"Z21=")
disp(Z22,"Z22=")

disp("As DZZ results in zero(0) therefore Y parameters are not defined ")
