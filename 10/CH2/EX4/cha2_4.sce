V=0.75;I=10000;A=0.6;
Pc=100;Reqh=10.4;Ih=(0.75*4.55)^2;
Reql=0.104;V2=220;B=1;

Pout=V*I*A

Pcu=(Ih*Reqh)

Eff=Pout/(Pout+Pc+Pcu)
 
Eff=Pout/(Pout+Pc+Pcu)*100

I2=(100/0.104)^(1/2)
 
Pout1=V2*I2*B

Eff1=Pout1/(Pout1+Pc+Pcu)

Eff1=Pout1/(Pout1+Pc+Pcu)*100
