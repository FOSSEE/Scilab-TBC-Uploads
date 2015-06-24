clc
//Initialization of variables
Q=[1 2 3 4 5]
t1=[5.2 9.4 13.7 18 22.2]
t2=[1.1 2 2.9 4 4.5]
//calculations
kqbykf=regress(Q,t1)
slope1=kqbykf(2) *10^3
kq=regress(Q,t2)
slope2=kq(2) *10^10
kq=slope2
kf=kq/slope1
thalf=log (2) /kf
//results
printf("Quenching rate constant = %.1e L ml^-1 s^-1",kq)
printf("\n Half life= %.1e s",thalf)
