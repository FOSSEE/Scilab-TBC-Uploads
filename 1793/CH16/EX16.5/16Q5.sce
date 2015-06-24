clc
B=1.5
Df=0.75
e=0.1*B
G=17.5
c=30
C=0
q=G*Df
Nq=18.4
Ng=15.668
Lqd=1+0.1*(Df/B)*tand(45+c/2)
Lgd=Lqd
Quc=q*Nq*Lqd+Lgd*B*Ng/2
k=0.8
a=1.754
Qua=Quc*(1-a*(e/B)^k)
printf('The gross ultimate load per unit length = %f kN',Qua)
