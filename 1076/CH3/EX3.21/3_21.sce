clear;
clc;

Vr=132e3/sqrt(3);
P=50e6;
pf=.8;
Irm=P/(3*Vr)
pfa=-1* acos(pf);
Ir=complex(Irm *pf, Irm * sin(pfa));

A=complex(.98*cosd(3), .98*sind(3));
B=complex(110*cosd(75), 110*sind(75));

Vs=(A*Vr)+(B*Ir);
V=abs(Vs)
vs=V*sqrt(3)*1e-3;
mprintf("\n\n\n(a)\nSending End Voltage= %.1f kV", vs)

phi1=atan(imag(Vs)/real(Vs))*(180/%pi);
mprintf("\nPower Angle= %.2f ",phi1)


Ss=(((vs)^2 * conj(A/B))-((sqrt(3)*Vr/1000)*(sqrt(3)*Vs/1000)/conj(B)));
Ps=real(Ss);
Qs=imag(Ss);

mprintf("\n\n\n(b)\nSending End Active Power= %.1f MW", Ps)
mprintf("\nSending End Reactive Power= %.1f MVar lagging", Qs)

Pl=Ps-(P * cos(pfa)*1e-6);
Ql=Qs-(P* -1*sin(pfa)*1e-6);
mprintf("\n\n\n(c)\nLine Loss= %.1f MW", Pl)
mprintf("\nMVar absorbed by line= %.1f MVar", Ql)

Pr=(P * cos(pfa)*1e-6);
Qr=(P * sin(pfa)*1e-6);
Vs1=140;
Vr1=132;

bd=acos(( Pr+real(((Vr1)^2 * conj(A/B))) ) * (abs(B)/(Vs1 *Vr1)));
Qr1= (((Vs1 *Vr1)/abs(B))*sin(bd))- imag(((Vr1)^2 * conj(A/B)));
Q=-Qr-Qr1;
mprintf("\n\n\n(d)\nCapacity of static capacitor= %.1f MVar", Q)

Vs2=132;
Vr2=132;
bd2=asin(( imag(((Vr2)^2 * conj(A/B))) ) * (abs(B)/(Vs2 *Vr2)));
P2= (((Vs2 *Vr2)/abs(B))*cos(bd2))- real(((Vr2)^2 * conj(A/B)));
mprintf("\n\n\n(e)\nPower supplied= %.2f MW",P2)
