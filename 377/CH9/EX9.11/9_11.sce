disp("Is=A*R*T*exp(-q*Va/(K*T))");
A=10^-3;
R=110;
T=300;
Va=0.67;
Va1=0.3;
a=0.026;  //say a=K*T/q
Is=A*R*T*exp(-Va/a)*10^8;
printf('\n The value of Is is %f*10^-8 A',Is*10^2);
I=Is*exp(-Va1/a)*10^7;
printf('\n The value of I is %f*10^-3 A',I);
