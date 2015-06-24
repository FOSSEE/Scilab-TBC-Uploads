// problem 10.17
d1=0.3
N1=2000/60
Q1=3
Hm1=30
Q2=5
N2=1500/60
Ht=200
Hm2=((N2/N1)*((Q2/Q1)^0.5)*(Hm1^0.75))^1.3333
n=Ht/Hm2
d2=((Hm2/Hm1)^0.5)*(N1/N2)*d1
disp(d2*100,n,"number of stages and diameter of each impeller in cm")
