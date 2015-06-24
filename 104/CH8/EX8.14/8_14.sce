//breakaway points
s=%s
sys=syslin('c',1/(s*(s^2+2*s+2)))
evans(sys)
syms s
d=derivat(sys)
n=numer(d)
a=roots(n)    //a=breakaway points
disp(a,"breakaway points=")
for i=1:2
    K=-a(i,1)^2+2*a(i,1)+2
        disp(a(i,1),"s=")
        disp(K,"K=")
end
printf("if K is complex then point is not a break away point")