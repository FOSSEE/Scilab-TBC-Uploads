//Example 8.7
clc;
// Define the polynomial
s=poly(0,"s");
p=8+4*s+4*s^2+2*s^3+2*s^4+s^5;
// Calculate the routh of above polynomial
r=routh_t(p);
S=roots(p);
disp(r,"Routh array=");
disp(S,"Roots=");
A=r(:,1);
c=0;
x=0;
for i=1:5
    x=A(i,1);
    if x<0
        c=c+1;
    end
end
if(c>=1) then
   printf("system is unstable");
else 
    l=length(S);
    c=0;
    for i=1:l
        a=S(i,1);
        r=real(a);
        if r<0 then
            c=c+1;
        end
    end
    if c==0 then
        printf("system is stable");
    else
        printf("system is unstable");
    end
end