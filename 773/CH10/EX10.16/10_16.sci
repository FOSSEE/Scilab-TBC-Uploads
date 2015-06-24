//equation//
ieee(2)
s=%s;
m=s^6+2*s^5+7*s^4+10*s^3+14*s^2+8*s+8
routh=routh_t(m);
disp(routh,"routh=")
 c=0;
 for i=1:n
    if (routh(i,1)<0)
      c=c+1;
    end 
  end
  if(c>=1)
    printf("system is unstable")
  else ("system is stable")
  end
  
  
