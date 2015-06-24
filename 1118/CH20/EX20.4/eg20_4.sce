clear;
//clc();

z2=50;
z1=400;
z3=400;
ef=10;

tau1=(2*z2)/(z1 + z2); 
rho1=(z1-z2)/(z2+z1);
tau2=(2*z3)/(z3 + z2);
rho2=(z3-z2)/(z3+z2);
etb=tau1*tau2*ef;
printf("The transmitted part entering the line BC is:%.2f kV\n",etb);

eta=rho1*rho2*tau1*ef;

etb1=rho1*rho2*tau1*tau2*ef;
printf("The second pulse entering the line BC is:%.2f kV",etb1);
