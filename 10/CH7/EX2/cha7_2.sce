F=60;P=4;N=1730;Zb=27.86;
R=1.35;X=1.63;R1=2.9;X1=3.26;
V=120;Prot=81.2;

Ns=(120*F)/P
  
S=(Ns-N)/N
 
a=%i*Zb*((R/S)+%i*X)
 
b=(R/S)+%i*(Zb+X)
 
Zf=a/b
 
Rf=13.06;
 
Xf=16.31;
 
a=%i*Zb*(R/(2-S)+%i*X)
 
b=R/(2-S)+%i*(Zb+X)

Zb=a/b
 
Rb=0.61;

Xb=1.55;
 
Zinput=(R1+Rf+Rb)+%i*(X1+Xf+Xb)

function[r,theta]=rect2polar(x,y)
r=sqrt(x^2+y^2);
theta=atan(y/x)*180/%pi;
endfunction

[a,b]=rect2polar(16.57,21.12)

Iinput=V/a
 
cos(%pi*b/180)
 
Pinput=V*Iinput*ans
 
Wsy=Ns*2*(%pi/F)

T=Iinput^2*(Rf-Rb)/Wsy
 
Pmech=T*Wsy*(1-S)

OutputPower=Pmech-Prot

Eff=OutputPower/Pinput*100
 
Pgf=Iinput^2*Rf
 
Pgb=Iinput^2*Rb
 
airgap=Pgf+Pgb
 
P2=S*Pgf+(2-S)*Pgb
