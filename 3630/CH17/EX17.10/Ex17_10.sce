clc;
f0=100;
Q=1.02;
BW=floor(f0/Q);
fc1=ceil(f0-BW/2);
fc2=floor(f0+BW/2);
fc11=floor(f0*((1+(1/((2*Q)^2)))^0.5)-BW/2);
fc22=floor((f0*(1+(1/((2*Q)^2)))^0.5)+BW/2);
Fc1=((fc11-fc1)/fc11)*100;
Fc2=((fc22-fc2)/fc22)*100;
disp('%',Fc1,"Fc1=");//The answers vary due to round off error
disp('%',Fc2,"Fc2=");//The answers vary due to round off error

