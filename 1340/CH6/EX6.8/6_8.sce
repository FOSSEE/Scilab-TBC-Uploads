clc;
s = %s;
G = syslin('c',128/(s*(s^7+3*s^6+10*s^5+24*s^4+48*s^3+96*s^2+128*s+192)));
CL = denom(G)+numer(G);
disp(CL);
routh = routh_t(CL);
disp(routh,"routh table:");
printf("fourth row is a row of all zeroes substituted by the coefficients of the auxillary polynomial");

c = 0;
for i =1:length(coeff(CL))
   if(routh(i,1)<0)
       c = c+1;
        end
end


if(c >=1)
  disp(c+1,"number of poles in RHP:");
  printf("2 poles on jw-axis due to row of all zeroes and rest in LHP");
else
    printf("stable system");
  end

