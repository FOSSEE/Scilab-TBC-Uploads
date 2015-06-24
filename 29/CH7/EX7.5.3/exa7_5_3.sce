//caption:stability_using_Routh-hurwitz_criterion
//example 7.5.3
//page 203
s=%s;
A=s^5+4*1.5*s^4+4*s^3+4*s^2+5*s+10;
C=2*s+5;
CL=A/C;
disp(CL,"C(s)/R(s)=");
disp('=0',A,"characteristics eq is:")
b=coeff(A)
n=length(b)
B=routh_t(A)
disp(B,"routh table:");
c=0;
r=1;
for(i=1:n)
  if(B(i,1)<0)
    c=c+1;
    if(i==n & B(n,1)<0)
      r=r;
    else
      r=r+1;
    end
  end
end
if(c>=1)
  printf("system is unstable\n");
else("system is stable " );
end
mprintf('no. of roots with positive real parts=%d',r);

