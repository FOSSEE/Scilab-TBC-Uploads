clc;
clear;
format('v',6);
rho=0.01;                       //rho=sepration between two wires.
I=100;
H=[-I/(2*3.14*rho) 0 0]         //H=The magnetic field produced by the wire along the Z axis,by placing the z-axis(current flowing along the positive z-axis) along one of the wires,and the other wire at y=0.01m.
B=4*3.14*10^-7*H;
dir1=[0 0 -1]                    //direction of the velocity of the electrons.
u1=dir1(1,2)*B(1,3)-dir1(1,3)*B(1,2);
u2=dir1(1,3)*B(1,1)-dir1(1,1)*B(1,3);
u3=dir1(1,1)*B(1,2)-dir1(1,2)*B(1,1);
R=[u1,u2,u3];                      //cross product of l and B.
F=I*R;                              //F=force per unit lenth on the other wire placed in the magnetic field of former wire.
F5m=5*F;                            //F5m=force on 5m of the wire.
disp(F5m,"the force on the 5m of the wire,F5m(in newton)=");
