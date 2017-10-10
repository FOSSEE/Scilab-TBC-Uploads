
clc
//given
m1=15//tons
u1=12//m/h
m2=5//tons
u2=8//m/h
k=2//ton/in
e1=0.5//coefficient of restitution
printf("\n")
//conservation of linear momentum
v=(m1*u1+m2*u2)/(m1+m2)
printf("velocity at the instant of  collision is %.2f mph",v)
e=(m1*m2*(88/60)^2*(u1-u2)^2)/(2*32.2*(u1+u2))
printf("\n")
printf("The difference between the kinetic energy before and during the impact is %.2f ft tons\n",e)
//energy stored in spring equals energy dissipated
//s=(1/2)*k*x^2
//s=e
//since there are 4 buffer springs ,4x^2=24 inches (2 ft=24 inches)
x=((e*12)/4)^.5
printf("Maximum deflection of the spring is %.2f in\n",x)
// maximum force acting between pair of buffer = stiffness of spring*deflection
f=k*x
printf("Maximum force acting between each buffer is %.2f tons\n",f)
//assuming perfectly elastic collision
//for loaded truck 
v1=2*11-12
//for unloaded truck 
v2=2*11-8
printf("Speed of loaded truck after impact %.2f mph\n",v1)
printf("speed of unloaded truck after impact %.2f mph\n",v2)
//if coefficient of restitution =o.5
//for loaded truck 
ve1=(1+.5)*11-.5*12
//for unloaded truck 
ve2=(1+.5)*11-.5*8
printf("Speed of loaded truck after impact when e=0.5 %.2f mph\n",ve1)
printf("Speed of unloaded truck after impact when e=0.5 %.2f mph\n",ve2)
//net loss of kinetic energy=(1-e^2)*energy stored in spring
l=(1-(e1^2))*2//ft tons
printf("Net loss of kinetic energy is %.2f ft tons\n",l)
