clc
disp("Example 14.4")
printf("\n")

s=%s;
Ya=3/(5*s+6);
Yb=2/(5*s+6);
Yc=s/(5*s+6);

//Writing KCL equations 
disp("I1=(Ya+Yc)*V1-Yc*V2        (1)")
disp("I2=-Yc*V1+(Yb+Yc)*V2       (2)")

//The equations which contain Y parameters are
//I1=Y11*V1+Y12*V2
//I2=Y21*V1+Y22*V2

//On comparing (1) and (2) with above equations
disp("Y11=Ya+Yc")
disp("Y12=-Yc=Y21")
disp("Y22=Yb+Yc")

//Substituting Ya , Yb and Yc
Y11=Ya+Yc
Y12=-Yc
Y21=-Yc
Y22=Yb+Yc

disp(Y11,"Y11=")
disp(Y12,"Y12=")
disp(Y21,"Y21=")
disp(Y22,"Y22=")

