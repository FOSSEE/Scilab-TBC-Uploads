
//determine the current also power nd power factor
V=200+%i*0
f=50
R1=30
L1=0.2
C1=10e-6
X1=2*%pi*f*L1
Z1=R1+%i*X1
R2=40
L2=0.12
X2=2*%pi*f*L2
Z2=R2+%i*X2
Z=(Z1*Z2)/(Z1+Z2)
I=V/Z
R=18.858//calculatimg Z and I we get R and Z,I
Z=31.06
coso=R/Z
I=6.44
P=I^2*R
I1=(I*Z1)/(Z1+Z2)
I2=(I*Z1)/(Z1+Z2)
coso1=R1/Z1
P1=I1^2*R1
coso2=R2/Z2
P2=(I2)^2*R2
disp('P2 ='+string(P2)+  'watt' ,'P1 ='+string(P1)+  'watt  ' ,  'Total power factr='+string(coso)+''  ,  'Total power='+string(P)+'watt' ,  'total current  ='+string(I)+'amps'   , 'total impedance='+string(Z)+'ohms' )
