clc;s=%s;
m=s^3+4.5*s^2+3.5*s +1.5;
disp (m)
r= coeff (m)
n= length (r)
routh = routh_t (m) // Thi s Func t ion g e n e r a t e s the Routht a b l e
disp (routh ," r o u t h s t a b u l a t i o n=")
c =0;
for i =1: n
if ( routh (i ,1) <0)
c=c+1;
end
end
if(c >=1)
printf (" system is unstable ")
else printf (" system is stable ")
end
