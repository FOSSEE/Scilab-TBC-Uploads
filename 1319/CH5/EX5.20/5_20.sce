//To determine the max regulation and the pf at which it occurs

clc;
clear;

Vr=2.5;
Vx=5;

printf('The expression for voltage requlation is y= %g cos(phi) + %g sin(phi) \n',Vr,Vx )

printf('Differenciating w.r.t phi and equating it to zero, we get the power factor angle \n')

printf('We get tan(phi)=> Vr/Vx => 5/2.5 => 2 \n \n')

phi=atand(Vx/Vr); // power factor angle

y= Vr*cosd(phi)+Vx*sind(phi); // Max Volatge regulation

printf('The maximum regulation is %g percent \n and the power factor at which it occurs is %g degrees \n',y,phi)
