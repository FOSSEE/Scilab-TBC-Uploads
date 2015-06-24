F=60;P=4;N=1710;RI=6;

Ns=(120*F)/P
 
Sfl=(Ns-N)/Ns
 
Tst=RI^2*Sfl
 
Stmax=(0.0875/0.91)^(1/2)
 
NMaxT=(1-Stmax)*Ns
 
Tmax=(1+Stmax^2)/(2*Stmax)*Tst
