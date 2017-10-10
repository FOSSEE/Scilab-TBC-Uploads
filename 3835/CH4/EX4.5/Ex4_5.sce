clear
//
f=50
irms=10
im=irms/(0.707)
//omega*t=2*3.14*f*t here the value for t can be substituted and value for i can be found from i=im*sin(omega*t)
t=0.0025
p=0.0137 //value of sin(314*0.0025)
i=(10*p)/(0.707)
printf("\n i= %0.1f  A",i)
//maximum value is when 314*t=%pi/2 (in radians)-->t=0.005
//hence at t=0.005+0.0125=0.0175 the value of i nedds to be found
p=0.0957
i=(10*p)/(0.707)
printf("\n i= %0.1f  A",i)
printf("\n NOTE:The answer given in text is printed wrongly")
i=7.07
//7.07=(10*sin314t)/0.707-->t=0.00833 sec
t=0.00833-0.005 //the time at which the instaneous value is 7.07A after positive maximum value is at this time
printf("\n t= %e  A",t)
