Vt=100;Ra=0.1;Ia=6;If=0.99;Rfw=80;
Ia1=5;Iarated=120;N=1000;
Afl=0.95;Prot=497.5;

Eanl=Vt-(Ia*Ra)
Ea = Eanl;
Ifar = 0.16;  
Rf=Vt/If
 
Rfc=Rf-Rfw
 
Prot=Ea*5
 
Eanl=Vt-(Ia*Ra)
 
Eafl=Vt-(Iarated*Ra)
  
Wfl=(Eafl/Eanl)*N
 
Wm=(Wfl/60)*2*%pi

T=(Eafl*Iarated)/Wm

Pout=(Eafl*Iarated)-(Prot)

Pin=(Vt)*(Iarated+If)

Eff=(Pout/Pin)*100

Wfl1=(Eafl/Eanl)*(1/Afl)*N
 
Wm1=(Wfl1/60)*(2*%pi)

T=(Eafl*Iarated)/(Wm1)

Eff1=(Pout/Pin)*100

Wm=(1000/60)*(2*%pi)
 
Ka=Eanl/Wm

Ia=1.5*120
 
Tstart=(Ka*Ia)

Ifeff=If-Ifar

Ea1=93.5
 
Ka1=(Ea1/Wm)
 
Tstart1=(Ka1*Ia)