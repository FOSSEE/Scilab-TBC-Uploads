clc;
s = poly(0,"s");
G = syslin('c',200/(s*(s^3+11*s^2+11*s+6)));disp(G,"G(s)=");
CL = G/(1+G);disp(CL,"Closed-loop transfer function:")
deno = denom(CL);
coef = coeff(deno);
routh = routh_t(deno);
disp(routh,"routh:");
c = 0;
for i = 1:length(coef)
     if(routh(i,1)<0)
         c = c+1;
         end
end
disp(c,"Number of negative signs in 1st column:");
if(c >=1)
    disp(c+1,"poles in RHP");
    printf("no poles on jw- axis,no rows of all zeroes");
    printf("\n rest of the poles in LHP");
else 
    printf("stable system")
    end