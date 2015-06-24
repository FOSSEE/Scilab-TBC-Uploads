//find
clc
//solution
//given
Lh=15000//hrs
Wr1=2000//N
Wa1=1200//N
N1=400//rpm
Ks1=3
Wr2=1500//N
Wa2=1000//N
N2=500//rpm
Ks2=1.5
Wr3=1000//N
Wa3=1500//N
N3=600//rpm
Ks3=2
Wr4=1200//N
Wa4=2000//N
N4=800//rpm
Ks4=1
X=1
Y=1.5
V=1
W1=(Wr1 + Y*Wa1)*3//N
W2=(Wr2 + Y*Wa2)*1.5//N
W3=(Wr3 + Y*Wa3)*2//N
W4=(Wr4 + Y*Wa4)*1//N
printf("value of W1,W2,W3,W4 is,%f N\n,%f N\n,%f N\n,%f N\n",W1,W2,W3,W4)
//L=60*N*Lh=0.9*10^6*N
L1=(1/10)*0.9*10^6*N1
L2=(1/10)*0.9*10^6*N2
L3=(1/5)*0.9*10^6*N3
L4=(3/5)*0.9*10^6*N4
printf("life of bearing is,%f rev\n,%f rev\n,%f rev\n,%f rev\n",L1,L2,L3,L4)
W=[(L1* W1^3 + L2* W2^3 + L3* W3^3 + L4* W4^3)/(L1+L2+L3+L4)]^(1/3)
L=L1+L2+L3+L4//rev
C=W*(L/10^6)^(1/3)//N
printf("dynamic load rating is,%f kN",C)