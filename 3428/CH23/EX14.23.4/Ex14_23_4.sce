//Section-14,Example-2,Page no.-PC.75
//To calculate equilibrium composition of reaction mixture
clc;
//a_N2=1.00-x           //Equilibrium partial pressure of N_2(bar)
//a_H2=3.00-(3*x)          //Equilibrium partial pressure of H_2(bar)
//a_NH_3=2*x               //Equilibrium partial pressure of NH(bar)
//K=(2*x^2)/((1.00-x)*(3.00-3*x)^3)=977
x_1=(163.416+sqrt((163.416)^2-(4*81.208*81.208)))/(2*81.208)
x_2=(163.416-sqrt((163.416)^2-(4*81.208*81.208)))/(2*81.208)
disp(x_1,'1st value of K')
disp(x_2,'2nd value of K')
//since x_2<1,it is accepted as the value of x.
p_N2=1-x_2              //bar
disp(p_N2,'Equilibrium composition of N2(bar)')
p_H2=3*(1-x_2)           //bar
disp(p_H2,'Equilibrium composition of H2(bar)')
p_NH3=2*x_2                 //bar
disp(p_NH3,'Equilibrium composition of NH3(bar)')
// It can be concluded that product NH3 dominate at equilibrium.
