clc
disp("Problem 11.17")
printf("\n")

printf("Given")
disp("v1=5*cos(w1*t)  v2=10*cos(w2*t+60)")
//The circuit is modeled as
disp("Resistance is 10ohm and inductance is 5mH")
R=10;L=5*10^-3;
//Let V be phasor voltage between the terminals
Vmag=10;
Vph=60; 
x=Vmag*cos((Vph*%pi)/180);
y=Vmag*sin((Vph*%pi)/180);
z=complex(x,y)

disp("a)")
w1=2000;w2=4000;
//Let Z be the impedance of the coil
Z1=R+%i*L*w1
Z2=R+%i*L*w2
V1=5;
//By applying superposition i=i1-i2
I1=V1/Z1
[R1,Theta]=polar(I1)
printf("i1=%0.2f*cos(%dt%d deg)\n",R1,w1,(Theta*180)/%pi);
P1=(R*R1^2)/2

V2mag=10;V2ph=60;
I2=z/Z2
[R2,Theta1]=polar(I2)
printf("i2=%0.2f*cos(%dt%3.2f deg)\n",R2,w2,(Theta1*180)/%pi);
P2=(R*R2^2)/2

//i=i1-i2
printf("i=%0.2f*cos(%dt%d deg)-%0.2f*cos(%dt%3.2f deg)\n",R1,w1,(Theta*180)/%pi,R2,w2,(Theta1*180)/%pi)

printf("P1=%0.3fW\nP2=%3.1fW\nTotal power(P)=%3.3fW\n",P1,P2,(P1+P2))

disp("b)")
//From problem 10.7
imagn=0.61
P=(R*imagn^2)/2
printf("Power dissipated in the coil=%3.3fW\n",P)

disp("c)")
w1=2000;w2=1414;
//Let Z be the impedance of the coil
Z1=R+%i*L*w1
Z2=R+%i*L*w2
V1=5;
//By applying superposition i=i1-i2
I1=V1/Z1
[R1,Theta]=polar(I1)
printf("i1=%0.2f*cos(%dt%d deg)\n",R1,w1,(Theta*180)/%pi);
P1=(R*R1^2)/2

V2mag=10;V2ph=60;
x1=V2mag*cos((V2ph*%pi)/180);
y1=V2mag*sin((V2ph*%pi)/180);
z1=complex(x1,y1)
I3=z1/Z2
[R3,Theta3]=polar(I3)
printf("i2=%0.2f*cos(%dt+%3.2f deg)\n",R3,w2,(Theta3*180)/%pi);
P3=(R*R3^2)/2

//i=i1-i2
printf("i=%0.2f*cos(%dt%d deg)-%0.2f*cos(%dt+%3.2f deg)\n",R1,w1,(Theta*180)/%pi,R3,w2,(Theta3*180)/%pi)

printf("P1=%0.3fW\nP2=%3.1fW\nTotal power(P)=%3.3fW\n",P1,P3,(P1+P3))










