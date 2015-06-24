clc
//Example 15.1
//Install Symbolic toolbox
//Calculate the voltage
//From figure 15.3
//Writing the KVL equation for the voltage and taking the Laplace transform
syms s
s=%s
disp('V=(2*s*(s+9.5)/((s+8)*(s+0.5)))-2')
//On solving
V=(2*s-8)/((s+8)*(s+0.5))
Vp=pfss (V)
Vp1=ilaplace(Vp(1))
Vp2=ilaplace(Vp(2))
v=Vp1+Vp2
disp(v,'v(t)=')




