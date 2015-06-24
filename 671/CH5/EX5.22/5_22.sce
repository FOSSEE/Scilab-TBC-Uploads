R=35
Q0=50
f1=540E3
f2=1610E3
w1=2*%pi*f1
w2=2*%pi*f2


L=1/(w1*(Q0/R))
Cmax=(Q0/R)^2*L
Cmin=1/(L*w2^2)

disp(Cmin*1000000,Cmax*1000000,L*1000000)