//Developed in Windows 7 Operating system 64-bit
//Platform Scilab 6.0.0
clc;clear;
//Example 1.2
//Find the angle between the face diagonals of a cube

//Given data
a=[1 0 1]; // Vector A=1x^+0y^+1z^
b=[0 1 1]; // Vector B=0x^+1y^+1z^
amod=sqrt(a(1)^2+a(2)^2+a(3)^2);
bmod=sqrt(b(1)^2+b(2)^2+b(3)^2);

//Calculation
c=a.*b;
dot=0;
for i=1:3
    dot=dot+c(i);
end
theta=acosd(dot/(amod*bmod));

disp(theta,'Angle(Dg.) betwen the face diagonals of a cube is : ')
