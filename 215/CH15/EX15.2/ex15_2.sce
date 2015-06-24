clc
//Example 15.2
//Install Symbolic toolbox
//Calculate the voltage
//Selecting the current based model
//From figure 15.6(b)
//Writing the KCL equation for the voltage and taking the Laplace transform
syms s
s=%s
Vc=-2*(s-3)/(s*(s+2/3))
Vcp=pfss (Vc)
Vcp1=ilaplace(Vcp(1))
Vcp2=ilaplace(Vcp(2))
vc=Vcp1+Vcp2
disp(vc,'vc=')