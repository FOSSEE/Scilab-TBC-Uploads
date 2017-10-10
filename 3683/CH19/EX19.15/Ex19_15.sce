P=500//in kN
Pu=1.5*P//in kN
fck=15//in MPa
fy=250//in MPa
l=5//effective length, in m
lex=5//in m
ley=5//in m
L=315//column dimension in mm (square column)
Asc=1256//in sq mm
m=lex*10^3/L//>12
n=ley*10^3/L//>12
//hence the column is slender on both the axes
Max=Pu*10^3*L/2000*(lex/(L/10^3))^2/10^6//in kN-m
May=Max
Puz=(0.45*fck*(L^2-Asc)+0.75*fy*Asc)/10^3//in kN
c=40//cover, in mm
//to find Pb
xu=(L-c)/(1+0.002/0.0035)//in mm
Pb=0.36*fck*L*xu/10^3//in kN
k=(Puz-Pu)/(Puz-Pb)//>1
Max=k*Max//in kN-m
Mu=15//in kN-m
Mu=Mu+Max//in kN-m
a=Pu*10^3/fck/L/L
b=Mu*10^6/fck/L/L^2//b=0.047
d1=c/L//d1=d'/D
//for d'/D = 0.1
p=0.095*fck//in %
Asc=p/100*L^2//in sq mm
//provide 4-18 mm + 4-12 mm dia bars
Asc=4*0.785*18^2+4*0.785*12^2//in sq mm
mprintf("Summary of design:\nColumn size - %d x %d mm\nSteel-main = 4-18 mm + 4-12 mm dia bars",L,L)
