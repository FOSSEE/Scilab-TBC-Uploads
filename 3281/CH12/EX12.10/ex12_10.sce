//Page Number: 654
//Example 12.10
clc;
//Given
R1=10.6; //GHz
R2=8.30; //GHz
Q0=8200;
Q0d=890;

Er=(R1/R2)^2;
disp(Er,'Dielectric constant');

Qd=(Q0-Q0d)/(Q0*Q0d);
disp(Qd,'Loss tangent of dielectric');
