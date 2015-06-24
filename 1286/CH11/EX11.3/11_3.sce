clc
//initialisation
k=6*10^-5
B=5000
c=420//J
T=2//k
//CALCULATIONS
dt=-(k*B*B)/(2*c*T)
T1=T+dt
//results
printf(' \n final temperature= % 1f k',T1)
