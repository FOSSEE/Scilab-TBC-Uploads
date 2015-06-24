clc
disp("Example 14.2")
printf("\n")

s=%s;
//Applying KVL equation to the two loops we get
//V1=2*I1+s*(I1+I2)-I2
//V2=3*I2+s*(I1+I2)

//On solving we get
disp("(s+2)*I1+(s-1)*I2=V1    (1)");
disp("s*I1+(s+3)*I2=V2        (2)");

//The equations which contain Z parameters are
//V1=Z11*I1+Z12*I2
//V2=Z21*I1+Z22*I2

//On comparing (1) and (2) with above equations
Z11=s+2;
Z12=s-1;
Z21=s;
Z22=s+3;

disp(Z11,"Z11=")
disp(Z12,"Z12=")
disp(Z21,"Z21=")
disp(Z22,"Z22=")
