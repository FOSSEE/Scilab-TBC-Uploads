//Two weights connected by weight
//refer fig.15.9 (a) and (b)
//Consider dynamic equilibrium of 200 N Weight
N1=200  //N
mu=0.3
//From law of friction
F1=mu*N1  //N
//applying equilibrium condition
//T1-(200*a)/9.81=60
//Consider 800N body
N2=800  //N
//From Law of friction
F2=mu*N2  //N
//applying equilibrium condition
//T+(800*a)/9.81=160 N
//Solving
a=((160-60)*9.81)/(200+800)  //m/sec^2
T=160-((800*a)/(9.81))  //N
printf("\na=%.3f m/sec^2\nT=%.2f N",a,T)


