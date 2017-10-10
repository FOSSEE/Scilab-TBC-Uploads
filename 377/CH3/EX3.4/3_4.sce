disp(" % ionic character = (1-exp((-1/4)*(Xa-Xb)^2))*100");
Xa1=1.8;Xb1=2.2;Xa2=1.7;Xb2=2.5;
a = (1-exp((-1/4)*((Xa1-Xb1)^2)))*100;
b = (1-exp((-1/4)*((Xa2-Xb2)^2)))*100;
printf('\n For GaAs,percent ionic character=%f',a);
printf('\n For ZnSe,percent ionic character=%f',b);