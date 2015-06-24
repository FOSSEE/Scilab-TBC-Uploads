clc
//to calculate magnetising current
//formula is phi(magnetic flux)=m.m.f/reluctance
//phi=N*i*mu*A/l--------eq(1)
//phi=BA------------eq(2)
B=0.20 //magnetic flux density in weber/m^2
l=1 //average length of the circuit in m 
N=100 //number of turns
mu=7.3*10^-3 //in h.m
//from eq(1)and eq(2),we get
i=B*l/(N*mu)
disp("magnetising current is i="+string(i)+"A")
