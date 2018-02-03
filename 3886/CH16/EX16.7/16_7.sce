//Block being pulled
//refer fig. 16.10 (a) and (b)
//when pull P is acting
W=2500  //N
P=1000  //N
N=W-P*sind(30)
mu=0.2
F=mu*N  //N
//Initial velocity=0
//Let final velocity be v
s=30  //m
//Applying work energy equation for the horizontal motion
v=sqrt((0.866*1000-400)*30*2*9.81/2500)
printf("\nv=%.3f m/sec",v)
//Now if the 1000 N force is removed,let the distance moved before rest be s
//Initial velocity=10.4745  //m/sec
//Final velocity=0
s=(2500*(10.4745^2))/(400*2*9.81)  //m
printf("\ns=%.3f m",s)
//The answer provided in the textbook is wrong
