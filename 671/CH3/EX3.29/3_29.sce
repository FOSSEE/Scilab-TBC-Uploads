R=250
C=25E-3

//at t=0-
v_0m=200*0.2

//at t=0+
v_0p=v_0m

T=R*C
v_inf=0

//at t=0.2ms
t=0.2E-3

t=T*log((v_0p-v_inf)/(20-v_inf))
disp(t)