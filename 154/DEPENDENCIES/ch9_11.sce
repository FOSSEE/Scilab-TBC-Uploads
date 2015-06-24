clc
disp("Example 9.11")
printf("\n")

//From figure 9.16
//H(s)=V(s)/I(s)=Z(s)
//Let V(s)=1 the H(s)=Z(s)
s=%s
z1=(1/2.5)+(3/(5*s))+(s/20)
Z=1/z1
Dem=Z('den')
//The roots are
q=roots(Dem)
disp(q,"Poles are")


