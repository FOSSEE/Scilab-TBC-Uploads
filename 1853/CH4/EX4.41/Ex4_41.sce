
//calculate total power absrbed
R=15
L=0.25
f=50
X=2*%pi*f*L
Z=sqrt(R^2+X^2)
Vl=400
V=Vl/1.732  //in star connection
I=V/Z
Il=I
coso=R/Z
P=3*V*Il*coso
disp('total power absorbed='+string(P)+'watt')
