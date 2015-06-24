
//determine the current also power nd power factor
V=200+%i*0
f=50
R1=10
X1=12
Z1=R1+%i*X1
R2=15
Xc2=20
Z2=R2-%i*Xc2
Z=(Z1*Z2)/(Z1+Z2)
I=V/Z//calculatimg Z and I we get R and Z,I
R=14.36
I=13.46
coso=R/Z
P=I*I*R
I1=(I*Z2)/(Z1+Z2)
I2=(I*Z1)/(Z1+Z2)
coso1=R1/Z1
P1=I1*I1*R1
coso2=R2/Z2
P2=I2*I2*R2
disp('P2 ='+string(P2)+  'watt' ,'P1 ='+string(P1)+  'watt  ' ,  'Total power factr='+string(coso)+''  ,  'Total power='+string(P)+'watt' ,  'total current  ='+string(I)+'amps'   , 'total impedance   Z  ='+string(Z)+'ohms' )
