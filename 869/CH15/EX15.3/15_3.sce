clc
//initialisation of variables
d= 3/8 //in
d1= 1/8 //in
y= 1 //in
T= 15000 //psi
sigmab= 32000 //psi
sigmat= 18000 //psi
//CALCULATIONS
Ps= %pi*T*(d/2)^2
Pt= sigmat*d1*(y-d)
Pb= sigmab*d1*d
Pmin=Ps
sigma=T
if(Pt<Pmin)
    Pmin=Pt
    sigma=sigmat
else
    Pmin=Pb
    sigma=sigmab
end
e= Pmin*100/(sigma*d1*y)
//RESULTS
printf ('e= %.2f per cent',e)

