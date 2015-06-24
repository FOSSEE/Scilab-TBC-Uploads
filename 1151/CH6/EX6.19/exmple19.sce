 // e l eme n t s i n one row o f r o u t h s t a b u l a t i o n s a r e a l lz e r o
s=%s;
m=s^6+3*s ^5+5* s ^4+9* s ^3+8* s ^2+6* s +4;
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
else printf("system is marginally stable")
end
