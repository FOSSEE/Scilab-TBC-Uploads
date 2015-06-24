clc
//Example 15.6
//Install Symbolic toolbox
//Calculate the voltage
//Performing source transformatiom on the s-domain circuit
//Solving for V(s)
syms s
s=%s
V=(180*s^4)/((s^2+9)*(90*s^3+18*s^2+40*s+4))
Vp=pfss (V)
Vp1=ilaplace(Vp(1))
Vp2=ilaplace(Vp(2))
Vp3=ilaplace(Vp(3))
v=Vp1+Vp2+Vp3
disp(v,'v(t)=')
