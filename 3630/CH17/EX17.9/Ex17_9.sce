clc;
f0=12000;
BW=6000;
Q=2;
fc1=f0-BW/2;
fc2=f0+BW/2;
fc11=ceil(f0*((1+(1/((2*Q)^2)))^0.5)-BW/2);
fc22=f0*(1+(1/(2*Q)^2))^0.5+BW/2;
Fc1=((fc11-fc1)/fc11)*100;
Fc2=((fc22-fc2)/fc22)*100;
disp('%',Fc1,"Fc1=");//The answers vary due to round off error
disp('%',Fc2,"Fc2=");//The answers vary due to round off error
