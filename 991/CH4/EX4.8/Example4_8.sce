//Example 4.8
clc
un=1250
up=475
q=1.6*10^-19
sigma_i=1/(25*10^4)
format(9)
ni=1/((25*10^4)*(1.6*10^-19)*(1250+475))
disp("  sigma_i = qni(un+up) = 1 / 25*10^4")
disp(ni,"Therefore,  ni = sigma_i / q(un+up) =")
format(7)
ND=(4*10^10)-10^10
disp(ND,"Net donor density,   ND(= n)(in cm^-3) = ")
p=ni^2/ND
disp(p,"Hence,  p(cm^-3) = ni^2 / ND =")
format(8)
sigma=(1.6*10^-19)*((1250*3*10^10)+(475*0.7*10^10))
disp(sigma,"Hence,  sigma = q*(n*un + p*up) =")
format(11)
J=6.532*4*10^-6
disp(J,"Therefore, total conduction current density, J(A/cm^2) = sigma*E =")