s=%s;
syms Kp Ka Kt Kd J f
// given 
J=0.4; 
Kp=0.6; 
Kt=2; 
f=2;
Ka=5;
p=Kp*Ka*Kt
q=s^2+((f+Ka*Kd*Kt)/J)*s+(Kp*Ka*Kt)/J
G=p/q;
disp(G,"Qm(s)/Qr(s)=")
cof_1=coeffs(q,'s',0)
// on comparing the coefficients
Wn=sqrt(cof_1)
zeta=1 // given
cof_2=coeffs(q,'s',1)
// 2*zeta*Wn=cof_2
Kd=(2*zeta*sqrt(Kp*J*Ka*Kt)-f)/(Ka*Kt)
disp(Kd,"Tachogenertor constant=")
