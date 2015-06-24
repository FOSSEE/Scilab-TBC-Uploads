//Chapter-5,Example 10,Page 125
clc();
close();

T1=50   //time in sec

T2 = 25   //time in sec

a1=0.5   //initial concentration

a2= 1 

//  (T1/T2) = (a2/a1)^(n-1)
//therefore  (50/25) =(1/0.5)^(n-1)
//           2=2^(n-1)
//           n=2
//hence its 2nd order 

t_half= T1

k=1/(a1*t_half)

//assume y= a-x

y=0.2*a1     //remaining concentration

t=(a1-y)/(a1*k*(y))

printf('the time taken is %.f sec ',t)
