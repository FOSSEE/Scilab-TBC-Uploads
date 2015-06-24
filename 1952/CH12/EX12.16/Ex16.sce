// Additional solved examples , Example 16 , pg 337
//plane has intercepts  4a,2b,4c along the 3  crystal axes
//lattice points in 3-d lattice are given by r=p*a+q*b+s*c
//as p,q,r  are the basic vectors the proportion of intercepts  2:2:3
p=4
q=2
s=4 
//therefore reciprocal
r1=1/4
r2=1/2
r3=1/4
//taking LCM
v=int32([4,2,4])
l=double(lcm(v))
m1=(l*r1)
m2=(l*r2)
m3=(l*r3)
printf("miler indices=")
disp(m3,m2,m1)
