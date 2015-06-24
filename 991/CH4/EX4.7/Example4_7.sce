//Example 4.7.
clc
ni=2.5*10^13
un=3800
up=1800
nog=4.4*10^22
q=1.6*10^-19
format(8)
sigma=q*ni*(un+up)
disp("(a) n = p = ni = 2.5*10^13 cm^-3")
disp(sigma,"Therefore,  conductivity(S/cm),  sigma = q*ni*(un+np) =")
format(6)
rho=1/sigma
disp(rho,"Hence,  resistivity(ohm-cm)   rho = 1 / sigma =")
format(8)
ND=(4.4*10^22)/10^7
disp(ND,"(b) ND(cm^-3) = ")
format(9)
p=ni^2/ND
disp("Also, n = ND")
disp(p,"Therefore,  p(holes/cm^3) = ni^2 / n = ni^2 / ND =")
disp("Here, as n >> p, p can be neglected.")
format(6)
sigma1=ND*q*un
disp(sigma1,"Therefore,  conductivity(S/cm),    sigma = n*q*un = ND*q*un =")
rho1=1/sigma1
disp(rho1,"Hence,  resistivity(ohm-cm),    rho = 1 / sigma =")
format(8)
NA=(4.4*10^22)/10^8
disp(NA,"(c) NA(cm^-3) = ")
disp("Also, p = NA")
format(9)
n=ni^2/NA
disp(n,"Therefore,  n(electrons/cm^3) = ni^2 / p = ni^2 / NA =")
format(7)
sigma2=NA*q*up
disp("Here, as p >> n, n may be neglected. Then,")
disp(sigma2,"Conductivity(S/cm),    sigma = p*q*up = NA*q*up =")
format(5)
rho2=1/sigma2
disp(rho2,"Hence,  resistivity(ohm-cm),    rho = 1 / sigma = ")
format(9)
disp("(d) with both p and n type impurities present,")
disp("      ND = 4.4*10^15 cm^-3 and NA = 4.4*10^14 cm^-3")
disp("Therefore, the net donor density ND'' is")
Nd=ND-NA
disp(Nd,"ND''(cm^-3) = (ND - NA) =")
disp("Therefore, effective n = ND'' = 3.96*10^15 cm^-3")
format(10)
p1=ni^2/Nd
disp(p1,"p(cm^-3) = ni^2 / N''D =")
disp("Here again p(= ni^2 / N''D) is very small compared with N''D and may be neglected in calculating the effective conductivity.")
format(6)
sigma3=Nd*q*un
disp(sigma3,"Therefore,  conductivity(S/cm),    sigma = ND''*q*un =")
rho3=1/sigma3
disp(rho3,"Hence,  resistivity(ohm-cm),    rho = 1 / sigma =")