V=120;F=60;N=2000;A=0.6;
Ra=20;L=0.25;
V=120;F=60;N=2000;Ia=0.6;
a=20;L=0.25;

Edc=V-(Ia*Ra)
 
X=2*%pi*F*L
 
Eac=(-Ia*Ra)+sqrt(V^2-(Ia*X)^2)
 
Nac=N*(Eac/Edc)
 
Pf=(Eac+(Ia*Ra))/V

Pmech=Eac*Ia
 
Wm=(Nac*2*%pi)/F

T=Pmech/Wm