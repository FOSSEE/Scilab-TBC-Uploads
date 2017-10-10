
//ch-1  page -40  pb-1

//

//


a=23
b=16.5
c=12


t1=acos((a*a+b*b-(c*c))/(2*a*b))
t1=t1*(180/%pi)

printf("\n theta1= %0.3f ",t1)

t2=acos((c*c+b*b-(a*a))/(2*c*b))
t2=t2*(180/%pi)
dg=int(t2)
mi=t2-int(t2)
mi=(mi*60)
printf("\n theta2= %0.3f degrees %0.3f minutes",dg,mi)
