//moving weight
//refer fig.17.6 (a),(b)and(c) 
//first method
//For 2000 N block
W1=2000  //N
mu=0.2
N1=W1*cosd(30)  //N
F1=mu*N1  //N
//For 1800N block
W2=1800  //N
N2=W2*cosd(60)  //N
F2=mu*N2  //N
//Let T be the tension in the chord
u=0
v=9.81  //m/sec
//applying impulse momentum equation for the 2000 N block in upward direction parallel to the plane
//(T-1346.41)*t=2000
//Applying impulse momentum equation for 1800 N block
T=1363.48  //N
//Thus
t=117.11  //sec
printf("\nBy first method-\nT=%.2d N\nt=%.2d sec",T,t)
//second method
//Writing impulse momentum equation in the direction of motion
t1=117.11  //sec
//To find tension in the chord, consider impulse momentum equation of any block
T1=1363.48  //N
printf("\nBy second method-\nt=%.3f sec\nT=%.3f N",t1,T1)








 
