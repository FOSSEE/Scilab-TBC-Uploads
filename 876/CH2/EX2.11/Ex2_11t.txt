//caption:Find unknown resistance,percent error and error in ohm
//Ex2.11
clc
clear
close
P=100//resistance of arm of wheatstone bridge(in ohm)
ep=0.5//error in P(in %)
Q=50//resistance of arm of wheatstone bridge(in ohm)
eq=0.5//error in Q(in %)
S=75.5//resistance of arm of wheatstone bridge(in ohm)
es=0.5//error in S(in %)
X=(P*S)/Q
disp(X,'unknown resistance(in ohm)=')
xo1=ep+es-eq
disp(xo1,'percent error when Q is taken positive(in %)=')
ex1=(xo1*X)/100
disp(ex1,'error in ohm(in ohm)=')
xo2=ep+es+eq
disp(xo2,'percent error when Q is taken negative(in %)=')
ex2=(xo2*X)/100
disp(ex2,'error in ohm(in ohm)=')