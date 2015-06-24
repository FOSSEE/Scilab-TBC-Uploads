clear;
clc;
printf("\n Example 7.4");
a = [2*84300*0.02^(2)*60 -2*0.02*0.0003;2*84300*0.02^(2)*120 -2*0.02*0.00044];
b = [0.0003^2;0.00044^2];
x = inv(a)*b;
y = [x(2);1/x(1)];
printf("\n L/v = %f         ruv = %f*10^(10)",y(1),y(2)*10^(-10));
printf("\n Area of filtering surface = %f m^2",4*(%pi));
printf("\n Bulk volume of cake deposited =%.3f m^3/revolution",4*(%pi)*0.005);

V = sqrt(1*10^(-6)*143^2);
printf("\n V = %.3f m^3",V);

t =poly([0],'t');
t1 = roots(0.141^2 +2*2.19*10^(-3)*0.141-2*84300*(4*(%pi))^(2)*t/(3.48*10^10));
printf("\n t = %f secs",t1);
printf("\n time for 1 revolution =%.1f secs",t1/0.4);
printf("\n speed = %.3fHz",0.4/t1);
printf("\n rate of filtrate production w = %.2f kg/sec",143/67.3)
printf("\n mass of slurry S =%.1f kg/sec",1.66*2.11);


