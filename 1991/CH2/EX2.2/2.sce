clc
clear
//input
v=0 //car stops => final velocity=0
u=29 //initial velocity
t=11 //time 
//calculation of acceleration
a=(v-u)/t//eqn of uniformly accelerated body
//calculating distance travelled during this period
d=(v+u)*t*0.5//eqn of uniformly accelerated body
//output
printf("the accleration is %3.3f ms^-2 ",a)
printf("\nthe distance travelled is %3.3f m",d)
