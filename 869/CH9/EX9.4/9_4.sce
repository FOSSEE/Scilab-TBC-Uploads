clc
length=15 //in
tension=5000 //lb
UltStress=20000 //psi
delta=0.005 //in
E=30*10^6 //psi
A1=tension/UltStress
A2=tension*length/(delta*E)
if A1>=A2     then
    A=A1
else
    A=A2
end
Dia=sqrt(4*A/%pi)
printf("diameter required= %f in", Dia)
