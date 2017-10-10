clear
//
//given
//i=14.14*sin(314t)-->i=im*sin(omega*t)
//case a
im=14.14
i=14.14/1.414 //1.414 is  the value of root 2
printf("\n i= %0.1f  A",i)
//case b
//omega=314=2*3.14*f
f=314/(2*3.14)
printf("\n f= %0.1f  A",f)
//case c
t=0.002
//i=im*sin(omega*t)
p=0.01096 //value of sin(omega*t)
i=im*p
printf("\n i= %0.1f  A",i)
printf("\n NOTE:Answer calculated wrongly in textbook for i obtained here")
