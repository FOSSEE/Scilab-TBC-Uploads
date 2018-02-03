//Block in contact with level plane
//refer fig. 17.3
//Normal reaction 
N=1500  //N
mu=0.1
F=mu*N  //N
//Applying impulse momentum equation in the horizontal direction
t=(1500*(16-0))/(9.81*(300-150))  //sec
//If force is then removed, the only horizontal force is F=150 N
//Applying impulse momentum equation
t1=-(1500*(0-16))/(9.81*(300-150))  //sec
printf("\nThe block takes %.3f sec before comming to rest",t)


