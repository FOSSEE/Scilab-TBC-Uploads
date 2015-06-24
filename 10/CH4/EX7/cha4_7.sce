If=0.99;Vt=100;Ia=120;Ra=0.1;
Rpm1=932;Rpm2=1000;
Ifeff=0.86;Nf=1200;
rpm1=1000;
Ifeff1=1.32;Rpm3=800;
EA=65;

Ea=Vt-(Ia*Ra)
 
Ea1=Rpm2/Rpm1*Ea

Ifar=If-Ifeff
 
At=Nf*Ifar
 
Ea2=Rpm2/Rpm3*Ea

Nsr=(Ifeff1-If+Ifar)*(Nf)/(Ia+If)
 
Ifeff2=If-(Nsr*(Ia+If))/Nf-Ifar

N=(Ea/EA)*Rpm2
