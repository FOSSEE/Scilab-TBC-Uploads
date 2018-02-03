//Man and his wish
//refer fig. 16.4 (a),(b)
//Work done in sliding
N=1  //kN
W=N  //kN
mu=0.3
F=mu*N  //kN
//Applied force
P=F  //kN
//Work to be done in sliding to a distance of 5 m (W1)
W1=0.3*5  //kJ
//Work to be done in tipping
//Height (h)
h=(1/sqrt(2))-0.5  //m
//Work done in one tipping (W2)
W2=W*h  //kJ
//To move a distance of 5m, Five tippings are required
//Hence 
W3=5*W2  //kJ
printf("\nThe man needs to spend only %.2f kJ while tipping and it is less than %.2f kJ spent in sliding\nHe should move the box by tipping",W3,W1)








