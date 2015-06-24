Ia=120;Vt=100;Rsr=0.01;
Ra=0.1;Ia=120;Rf=100;
Ifeff=1.45;If=1.01;
Nf=1200;Ifar=0.06;

It=Ia-If
 
If=(Vt+It*Rsr)/Rf
 
Ea=Vt+(It*Rsr)+(Ia*Ra)
  
Nsr=(Ifeff-If+Ifar)*(1200)/(It)
