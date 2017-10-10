clear all
clc
close

Vs=200*1e3//Supply voltage
f=50//Frequency in Hz
n=12//Number of stages

C=0.15*1e-6//Each stage capacitance in F
iload=5*1e-3//Load current in A

//Ripple voltage in V
dv=iload/(f*C*2)*n*(n+1)
printf('Ripple voltage in V %f',dv)

//Voltage drop in V
Vdrop=iload/(f*C)*(2*n^3/3+n^2/2-n/6+n*(n+1)/4)
printf('Voltage drop in V %f',Vdrop)

//Average output voltage in V
V_av=2*n*sqrt(2)*Vs-Vdrop
printf('Avarage voltage in V %f',V_av)

//Ripple factor in percentage
RF=Vdrop/(2*n*Vs*sqrt(2))*100
printf('Ripple voltage in percentage %f',RF)

//Otimum number of stages
nopt=sqrt(sqrt(2)*f*C*Vs/iload)
printf('Optimum number of stgaes for minimum voltage drop %f',int(nopt))
