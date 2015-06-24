s=%s;
syms Kp Ka Kt J f
// given 
J=0.4; 
Kp=0.6; 
Kt=2; 
f=2;
p=Kp*Ka*Kt
q=s^2+f/J+(Kp*Ka*Kt)/J
G=p/q;
disp(G,"Qm(s)/Qr(s)=")
cof_1=coeffs(q,'s',0)
// on comparing the coefficients
// Wn=sqrt(cof_1)
Wn=10;
Ka=(Wn)^2*J/(Kp*f)
disp(Ka,"Amplifier Constant=")