clc
disp("Problem 10.7")
printf("\n")

printf("Voltage v1=5*cos(w1*t)")
printf("Voltage v2=10*cos(w2*t+60)")
//The circuit is modeled as
disp("Resistance is 10ohm and inductance is 5mH")
R=10;L=5*10^-3;
disp("a)")
w1=2000;w2=2000;
//Let Z be the impedance of the coil
Z1=R+%i*L*w1
Z2=R+%i*L*w2
//Let V be phasor voltage between the terminals
Vmag=10;
Vph=60; 
x=Vmag*cos((Vph*%pi)/180);
y=Vmag*sin((Vph*%pi)/180);
z=complex(x,y)
v=5-z;
//Let I be the current
I=v/Z1
[R,Theta]=polar(I)
printf("i=%0.2f*cos(%dt%d deg)",R,w1,(Theta*180)/%pi);

disp("b)")
R=10;L=5*10^-3;
w1=2000;w2=4000;
//Let Z be the impedance of the coil
Z1=R+%i*L*w1
Z2=R+%i*L*w2
V1=5;
//By applying superposition i=i1-i2
I1=V1/Z1
[R,Theta]=polar(I1)
printf("i1=%0.2f*cos(%dt%d deg)\n",R,w1,(Theta*180)/%pi);
V2mag=10;V2ph=60;
I2=z/Z2
[R1,Theta1]=polar(I2)
printf("i2=%0.2f*cos(%dt%3.2f deg)\n",R1,w2,(Theta1*180)/%pi);
//i=i1-i2
printf("i=%0.2f*cos(%dt%d deg)-%0.2f*cos(%dt%3.2f deg)\n",R,w1,(Theta*180)/%pi,R1,w2,(Theta1*180)/%pi)


