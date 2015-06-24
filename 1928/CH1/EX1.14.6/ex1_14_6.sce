//Chapter-1,Example1_14_6,pg 1-59

//if a plane cut at length m,n,p on the three crystal axes,then

//m:n:p=xa:yb:zc

//when primitive vectors of unit cell and numbers x,y,z,are related to miller indices (h,k,l)of the plane by relation

//1/x:1/y:1/z=h:k:l

//since a=b=c (crystal is simple cubic)

//and (h,k,l)=(1,2,3)

//therefore reciprocal

r1=1/1

r2=1/2

r3=1/3

//taking LCM

v=int32([1,2,3])

l=double(lcm(v))

m=(l*r1)

n=(l*r2)

p=(l*r3)

printf("ratio of intercepts=")

disp(m)

disp(n)

disp(p)
