//Example_a_4_13 page no:180
clc;
//here Vm is assumed to be one hence it will be canceled in the calculation and also a variable without initializing cannot be used
x0=0;
x1=%pi;
Vav=(1/(2*%pi))*(integrate('sin(x)','x',x0,x1));
x0=0;
x1=%pi;
Vrms=sqrt((1/(2*%pi))*(integrate('sin(x)^2','x',x0,x1)));
form_factor=Vrms/Vav;
disp(form_factor,"the form factor is ");
//the form factor differs slightly hence values are rounded off in text book
