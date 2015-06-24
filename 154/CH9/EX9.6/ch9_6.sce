clc
disp("Example 9.6")
printf("\n")

printf("Given")
disp("Resistance is 10ohm and inductance is 2H")
disp("Applied voltage is 10*exp(-2*t)*cos(10*t+30)")
s=%s;
//For a RL circuit
//Applying KVL equation 
//v=i*R+L*d/dt(i)    (1)
//As v=10(30 deg)    (2)
//Equating (1) and (2) 
// Let i=I*exp(s*t)    (3)
// 10(30 deg)*exp(s*t)=10*I*exp(s*t)+2*s*I*exp(s*t)")
//Solving for I
disp("I=10(30 deg)/10+2*s")
s=-2+%i*10
a=10+2*s
x=10*cos((30*%pi)/180);
y=10*sin((30*%pi)/180);
z=complex(x,y)
I=z/a
b=real(I);
c=imag(I);
magn=sqrt(b^2+c^2)
ph=(atan(c/b)*180)/%pi
//From (3)
printf("\ni=%0.2f*exp(-2*t)*cos(10t%3.1f deg) (A)\n",magn,ph);



