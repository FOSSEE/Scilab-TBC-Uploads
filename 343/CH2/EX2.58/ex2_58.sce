clc
Vm=100;         //Assigning values to parameters
w=3;
function v=f(t), v=Vm*sin(w*t), endfunction   //Defining voltage equation
V=Vm/sqrt(2)+0*%i;
L=1/3;
Xl=w*L;
C=1/6;
Xc=1/(w*C);
Z1=1+%i*1;
Z2=1-%i*2;
I1=V/Z1;
I2=V/Z2;
I=I1+I2;
disp("Amperes",polar(I1),"Branch current I1");
disp("Amperes",polar(I2),"Branch current I2");
disp("Amperes",polar(I),"Total current");