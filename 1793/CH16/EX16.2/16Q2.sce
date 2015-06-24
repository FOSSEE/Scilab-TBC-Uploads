clc
G=18.15
qa=30000*9.81/1000

Nc=57.75
Nq=41.44
Ng=45.41
C=0
q=G*1
B=1
(1.3*C*Nc+q*Nq+0.4*G*B*Ng)*B^2/3 == qa
B= sqrt(294.3/(250.7+109.9))
printf(' B = %f m',B)
