//Example 16.9, page 607
clc
Z=0+1+4
A=1+9-1
printf("\n The value of z is %d",Z)
printf("\n The value of A is %d",A)
ka=50
kb=48.1
mB=1
ma=1/9
mb=1/9
x=1/9//ma/mB
y=1/9//mb/mB
part1=kb*(1+x)
part2=ka*(1-y)
part3=(2*sqrt(ka*kb*ma*mb))
Q=part1-part2-part3
printf("\n The value of Q is %f Mev",Q)
sq_kb_plus=(1.36+sqrt(1.36**2+(4*1.11*42.5)))/(2*1.11)
sq_kb_minus=(1.36-sqrt(1.36**2+(4*1.11*42.5)))/(2*1.11)
kb_plus=(sq_kb_plus)**2
kb_minus=(sq_kb_minus)**2
printf("\n The maximum neutron produced at angle 30 degree is %f Mev",kb_plus)

