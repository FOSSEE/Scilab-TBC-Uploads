clear
//
//given
v=250
i=5
i1=3.91
t0=0.00426 //temperature coefficient
r15=v/i //at 15 degrees
rt=v/i1 //at t degrees
l=(rt*(1+t0*15))/50 //left hand side
t=(l-1)/t0
printf("\n t= %0.1f  centigrade",t)
