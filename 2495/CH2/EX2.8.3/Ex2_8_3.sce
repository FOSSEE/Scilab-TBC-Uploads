clear
clc
n1=0.1;//amount of napthalene in mol
n2=0.9;//amount of benzene in mol
Tf=278.5;//freezing temperature of C6H6 in K
Tb=353;//boiling temperature of C6H6 in K
P1=670;//vapour pressure in torr
P2=760;//in torr
R=8.314;//in J/Kmol
M1=78;//atomic mass of C6H6
DelHm_f=10.67;//in KJ
X1=(P2-P1)/P2;//
nT=(n1/X1);//
nb=(nT-n1);//
Kfb=((R*Tf^2)/(DelHm_f*1000))*(M1/1000);//
printf('Kfb=%.3f Kg/mol',Kfb)
B=(n1/(nb*M1)*1000);//molality of the solution
printf('\nB=%.3f mol/kg',B)
DelTf=(Kfb*B);//in K
T=(Tf-DelTf);//in K
printf('\nT=%.2f K',T)

//There are some errors in the solution given in textbook
//page 59
