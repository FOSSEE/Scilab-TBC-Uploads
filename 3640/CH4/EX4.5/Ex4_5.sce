clc
ns=1800 //synchronous speed in rev/min
n=1745 //initial speed in rev/min
hp=10 //hp rating of the motor horsepower(1 hp=746 Watts)
s=(ns-n)/ns
mprintf("s=%f\n",s)//ans may vary due to roundoff error
s=s/2 //slip at half torque
n1=ns*(1-s)//ans may vary due to roundoff error
mprintf("n=ns(1-s)=%frev/min\n",n1)
//output at half torque
mprintf("New horsepower output=%fhp\n",(0.5*hp*n1)/n)//ans may vary due to roundoff error,0.5 factor comes due to half torque





