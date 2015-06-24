
//calculate the total amprers turns
u=1//for air gap
F=1.2e-3//flux
A=10e-4 //area 
B=F/A
H=B/(4*3.14*10^-7*u)
l=0.2e-3//air gap
S=H*l//amps turns in air gap
l1=15e-2//air gap
A1=8e-4
H1=450
S1=H1*l1
F1=0.6e-3
B1=F1/A1
H2=140
S2=H2*30e-2
TN=500
TAN=S+S1+S2
EI=TAN/TN
disp('exciting current =' +string(EI)+'amps'  )
