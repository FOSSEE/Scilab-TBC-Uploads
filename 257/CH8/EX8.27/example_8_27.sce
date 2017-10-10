s=%s
//P=s^4+2*s^3+3*s^2+s+1
s'=%s
P=(s'-1)^4+2*(s'-1)^3+3*(s'-1)^2+(s'-1)+1      //putting s=s'-1
routh=routh_t(P)
disp(routh)
r=coeff(P)
n=length(r)
c=0;
for i=1:n
if (routh(i,1)<0)
c=c+1;
 end 
  end
  if(c>=1)
    printf("there are 2*%d roots to the right of s=-1",c)         //2 terms with negetive signs implies 4 sign changes//
  else printf("system is stable")
  end

F=(s'-0.5)^4+2*(s'-0.5)^3+3*(s'-0.5)^2+(s'-0.5)+1
disp(routh_t(F)) 
r=coeff(F)
rouths=routh_t(F)
n=length(r)

    printf("there are 2 sign changes.so there are 2 roots to the right of s=-0.5")
 