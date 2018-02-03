//Two cars
//refer fig.12.13
//Let A and B be the positions of cars when the drivers see each other and apply brakes
//Let they meet at C
//1.car A
au=12  //m/sec
av=0
//s=x
//a1 be acceleration
//using equation of motion
//a1=(-12)/t
//x=6*t
//2.car B
bu=9  //m/sec
bv=0
//a=a2
//time=t
//s=100-x
//using equation of motion
//a2=-9/t
//100-x=4.5*t
//solving
t=100/10.5  //sec
a1=-12/t  //m/sec^2
a2=-9/t  //m/sec^2
x=57.14  //m
//distance traveled by second car
bx=100-x  //m
printf("\nt=%.2f sec\na1=%.2f m/sec^2\na2=%.2f m/sec^2\nDistance travelled by first car=%.2f m\nDistance travelled by second car=%.2f m",t,a1,a2,x,bx)
