//Caption:determine_transfer_function
//example 11_19
//page 489
syms t;
s=%s;
c=0.5+(1.25*exp(-t))-(1.75*exp(-12*t));
C=laplace(c,t,s);
disp(C,"C(s)=")