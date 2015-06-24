clc
disp("Example 15.7")
printf("\n")

printf("Given")
disp("N1=20 N2=N3=10")
disp("I2=10(-53.13 deg) I3=10(-45 deg)")
N1=20;N2=10;N3=10;
I2mag=10;I2ph=-53.13;
I3mag=10;I3ph=-45;
//From figure 15.14
disp("N1*I1-N2*I2-N3*I3=0")
//Solving for I1
Xmag=N2*I2mag 
Xph=I2ph
x=Xmag*cos((Xph*%pi)/180);
y=Xmag*sin((Xph*%pi)/180);
z=complex(x,y)

Ymag=N3*I3mag 
Yph=I3ph
x1=Ymag*cos((Yph*%pi)/180);
y1=Ymag*sin((Yph*%pi)/180);
z1=complex(x1,y1)

I1=(z+z1)/N1
[R,Theta]=polar(I1);
printf("I1=%3.2f(%3.2f deg) A\n",R,(Theta*180)/%pi);

