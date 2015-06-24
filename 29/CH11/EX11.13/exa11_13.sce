//Caption:determine_transfer_function
//example 11_13
//page 483
syms t;
f=exp(-t)*(1-cos(2*t))
F=laplace(f,t,s);
disp(F,"F(s)=")