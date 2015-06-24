clc
//Example 15.10
//Since the input function is given the Laplace transform is found
syms s t
s=%s
vin=6*exp(-t)
Vin=laplace(vin)
//Connecting the impulse voltage pulse to the circuit and converting to s-domain
//If vin=delta(t)..the impulse source
V0=2/((2/s)+2)
//As source voltage is 1V
H=V0
V=Vin*H
Vp=pfss ((6*s)/(s+1)^2)
Vp1=ilaplace(Vp(1))
v0=Vp1
disp(v0,'v0(t)=')