clc
//initialisation of variables
d= 7/8 //in
Ss= 15000 //psi
Sb= 32000 //psi
St= 20000 //psi
n=8
t= 3/8 //in
l= 10 //in
//CALCULATIONS
Ps= Ss*%pi*n*(d/2)^2
Pb= Sb*%pi*n*d*t
Pt1= St*(l-d*2)*t
Pt2= 4*St*(l-d*4)*t/3
Pt3= 4*St*(l-d*2)*t
Pmin= Ps
sigma= Ss
if (Pb<Pmin)
    Pmin=Pb
    sigma=Sb
elseif (Pt1<Pmin)
    Pmin=Pt1
    sigma=St
elseif (Pt2<Pmin)
    Pmin=Pt2
    sigma=St
else (Pt3<Pmin)
    Pmin=Pt3
    sigma=St
end
e= Pmin*100/(sigma*t*l)
//RESULTS
printf ('e= %.1f per cent',e)
