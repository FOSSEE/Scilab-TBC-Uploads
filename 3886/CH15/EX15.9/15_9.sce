//Two blocks on an inclined plane
//refer fig. 15.11 (a,b,c) and (d)
//Let block A move with an acceleration a1 and block B with an acceleration a2
//Consider block A
//Using equilibrium conditions 
//NA=WA*cosd(30)
mu1=0.2
WA=100  //N
//From the law of friction
FA=mu1*WA*cosd(30)  //
a1=3.2058  //m/sec^2
//Consider block B
//NB=WB*cosd(30)
mu2=0.4
//From law of friction 
//FB=mu2*WB*cosd(30)
a2=1.5067  //m/sec^2
//Let t be the time elapsed until the blocks touch each other
//displacement of block A in this period be s1
//displacement of block B in this period be s2
//when the two blocks touch each other
//s1=s2+18
//thus
t=4.60  //sec
//After the blocks touch each other
a=2.45  //m/sec^2
P=100*sind(30)-(0.2*100*cosd(30))-((100*2.45)/(9.81))  //N
printf("\nt=%.2f sec\nP=%.1f N",t,P)
