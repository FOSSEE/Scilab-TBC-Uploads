//chapter10,Example10_13,pg 276

e=1.6*10^-19

Va=150

m=9.1*10^-31

vx=sqrt((2*e*Va)/m)

V=20

d=10^-2

ay=(e/m)*(V/d)

l=10*10^-2

vy=ay*(l/vx)

theta=atan(vy/vx)

theta=theta*(180/%pi)//converting into degree

theta=theta*(%pi/180)//converting into radian

Y=d*tan(theta)

S=(Y/V)

printf("velocity of electron reaching field vx=%.2f m/sec\n",vx)

printf("\nacceleration due to electric field ay=%.2f m/sec2\n",ay)

printf("\nfinal velocity attained by deflecting field vy=%.2f m/sec\n",vy)

printf("\nangle of deflection theta=%.2f deg.\n",theta)

printf("\ndeflection on screen Y=%.2f m\n",Y)

printf("\ndeflection senstivity S=%.2f m/volt\n",S)