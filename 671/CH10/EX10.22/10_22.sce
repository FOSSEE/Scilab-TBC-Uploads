V=400
Ia=50
n=500
Ra=0.5
Ea=V-Ia*Ra
Tdev=Ea*Ia/2/%pi/n*60

Iastart=75
Rs=V/Iastart-Ra
disp(Rs)
Tstart=Tdev*(Iastart/Ia)^2
disp(Tstart)

n2=200
Ea200=Ea*n2/n
Rs=(V-Ea200)/Iastart-Ra
disp(Rs)
