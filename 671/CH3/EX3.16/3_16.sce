L=0.25
R=250
V=10
T=L/R

t=0.5E-3
i=V/R*(1-exp(-t/T))
disp(i)

t=2E-3
i=V/R*((exp((1E-3-t)/T)-exp(-t/T)))
disp(i)