//Example 4.6.
clc
ni=1.5*10^10
un=1300
up=500
q=1.6*10^-19
nos=5*10^22
disp("(a) In intrensic condition, n=p=ni")
disp("Hence, sigma_i = q*ni*(un+up)")
format(8)
sigma_i = q*ni*(un+up)
disp(sigma_i,"sigma_i(S/cm) = ")
disp("(b) Number of silicon atoms/cm^3 = 5*10^22")
ND=5*10^22/10^8
disp(ND,"Hence, ND(cm^-3) = ")
disp("Further, n = ND")
disp("Therefore,    p = ni^2/n = ni^2/ND")
p=ni^2/ND
disp(p,"p(cm^-3) = ")  // wrong answer in textbook
disp("Thus p << n. Hence p may be neglected while calculating the conductivity.")
disp("Hence,      sigma = n*q*un = ND*q*un")
sigma=ND*q*un
disp(sigma,"sigma(S/cm) = ")
NA=(5*10^22)/(5*10^7)
disp(NA,"(c) NA(cm^-3) = ")
disp("Further, p = NA")
disp("Hence,     n = ni^2/p = ni^2/NA")
n=ni^2/NA
disp(n,"n(cm^-3)= ")
disp("Thus p >> n. Hence n may be neglected while calculating the conductivity.")
disp("Hence,     sigma = p*q*up = NA*q*up")
sigma1=NA*q*up
disp(sigma1,"sigma(S/cm) = ")
disp("(d) With both types of impurities present simultaneously, the net acceptor impurity density is,")
Na=NA-ND
disp(Na,"Na(cm^-3) = NA - ND = ")
disp("Hence,     sigma = Na*q*up")
sigma2=Na*q*up
disp(sigma2,"sigma(S/cm) = ")