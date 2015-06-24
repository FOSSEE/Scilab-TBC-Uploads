Nof=60;NoV=2200;
NoI=4.5;NoP=1600;
BF=15;BV=270;BI=25;
BP=9000;
R1=2.8;V=2200;F=60;
Rbl=4.8;

Pnl=1600

Prot=Pnl-(3*NoI^2*R1)

Vt=V/sqrt(3)
 
Znl=(Vt/NoI)

Rnl=(Pnl)/(3*NoI^2)

Xnl=(Znl^2-Rnl^2)^(1/2)
 
Rbl=BP/(3*BI^2)

Zbl=(BV)/(sqrt(3)*BI)
 
Xbl=(Zbl^2-Rbl^2)^(1/2)

Xbl=Xbl*(F/BF)
 
X1=Xbl/2
 
Xm=(Xnl-X1)

R=Rbl-R1
 
R2=((X1+Xm)/(Xm))^2*2
 
Vth=(Xm)/(X1+Xm)
 
Rth=(Vth^2)*R1
