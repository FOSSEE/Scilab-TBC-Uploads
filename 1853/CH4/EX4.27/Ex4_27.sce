
//determine the inductance of the coil and voltage across each element
I=7
V=200
f=50
R=10
r=1.5  //rasistance choke coil
V1=I*R
V3=I*r
V2=sqrt(V^2-(V1+V3)^2)
X=V2/I  //inductive reactance
L=X/(2*%pi*f)
V4=sqrt(V2^2+V3^2)  ///voltage across choking coil
disp('voltage across choking coil='+string(V4)+'volts'  , 'inductor='+string(L)+'henry')

