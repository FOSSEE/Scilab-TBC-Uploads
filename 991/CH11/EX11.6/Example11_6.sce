//Example 11.6.
clc
format(5)
alpha=224/(2*%pi*(5.9*10^3)*(63*10^-12)) //Hz
x1=alpha*10^-6 //MHz
disp(x1,"  f_alpha(MHz) = hfe / 2*pi*rb''e*Cb''e =")
beta=1/(2*%pi*(5.9*10^3)*((63*10^-12)+(12*10^-12)))
x2=beta*10^-6
format(6)
disp(x2,"   f_beta(MHz) = 1 / 2*pi*rb''e*(Cb''e+Cb''c) =")
fT=(38*10^-3)/(2*%pi*((63*10^-12)+(12*10^-12)))
x3=fT*10^-6
disp(x3,"      fT(MHz) = gm / 2*pi*(Cb''e+Cb''c) =")