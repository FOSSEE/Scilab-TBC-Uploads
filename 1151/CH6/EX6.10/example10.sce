s=%s;
m=s ^5+2*s ^4+24*s^3+48*s^2-25*s-50;
disp (m)
r= coeff (m)
n= length (r)
routh = routh_t (m)
disp (routh ," r o u t h s t a b u l a t i o n s=")
c =0;
for i =1: n
 if ( routh (i ,1) <0)
c=c+1;
 end
 end
if(c >=1)
printf (" sys t em i s u n s t a b l e ")
else printf (" sys t em i s ma r g i n a l l y s t a b l e ")
 end
