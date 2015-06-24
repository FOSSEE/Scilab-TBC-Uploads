//Problem 1.2
h1=0.75 //atm pressure in term of mercury
w=9810
w1=13.6*w //specific weight of mercury
Patm=w1*h1
w2=15000
h2=3 //
p=w2*h2 // gauge pressure
Pabs=Patm+p
disp(p,"gauge pressure(N/m2)")
disp(Pabs,"absolute pressure(N/m2)")

