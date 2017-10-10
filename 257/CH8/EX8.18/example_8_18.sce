s=%s
// C=s^4+10*s^3+36*s^2+70*s+75    characteristic equation//
F=(s-2)^4+10*(s-2)^3+36*(s-2)^2+70*(s-2)+75    //shifting the origin with respect to s=-2//
disp(routh_t(F)) 
r=coeff(F)
routh=routh_t(F)
n=length(r)
c=0;
for i=1:n
if (routh(i,1)<0)
c=c+1;
 end 
end
  if(c>=1)
    printf("there are %d roots to the right of s=-2 line",c+1)
  else printf("system is stable")
  end
