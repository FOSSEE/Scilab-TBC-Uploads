// chapter 5 , Example5 1 , pg 149
//plane has intercepts  a,2b,3c along the 3  crystal axes
//lattice points in 3-d lattice are given by r=p*a+q*b+s*c
//as p,q,r  are the basic vectors the proportion of intercepts  1:2:3
p=1
q=2
s=3 
//therefore reciprocal
r1=1/1
r2=1/2
r3=1/3
//taking LCM
v=int32([1,2,3])
l=double(lcm(v))
m1=(l*r1)
m2=(l*r2)
m3=(l*r3)
printf("miler indices=")
disp(m3,m2,m1)
