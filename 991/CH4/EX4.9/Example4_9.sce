//Example 4.9.
clc
ni=1.5*10^10
un=1300
up=500
q=1.6*10^-19
sigma=300
disp("(a) Concentration in N-type silicon")
format(10)
n=sigma/(q*un)
disp("The conductivity of an N-type Silicon is sigma = q*n*un")
disp(n,"Concentratoin of electrons, n(cm^-3) = sigma / q*un =")
p=ni^2/n
disp(p,"Hence,  concentration of holes, p(cm^-3) = ni^2 / n =")
disp("(b) Concentration in P-type silicon")
p=sigma/(q*up)
disp("The conductivity of a P-type Silicon is sigma = q*p*up")
disp(p,"Hence,  concentratoin of holes, p(cm^-3) = sigma / q*up =")
n=ni^2/p
disp(n,"and concentration of electrons, n(cm^-3) = ni^2 / p =")