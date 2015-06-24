clc
//initialisation of variables
p1=10//mgd
p2=6940//gpm
w=67000//people
d=2//min
v=d*p2/d//gal
v1=98.2//cu ft each
q=30//min
q1=q*p2/d//gal
q2=13900//cu ft
a=1390//sq ft
s=2//hr
s1=120*p2/d//gal
s2=55700//cu ft 
s3=s2/8//sq ft
r=3//gpm/sq ft
r1=6//rapid
//CALCULATIONS
D=sqrt(v1*4/%pi)//ft
S=p2/s3//gpm/sq ft
A=p2/(r1*r)//sq ft
//RESULTS
printf('the capacity of the components of a rapid sand filtration plant=% f sq ft',A)
