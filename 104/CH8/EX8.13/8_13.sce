//breakaway points
s=%s
sys=syslin('c',1/(s*(s+4)*(s^2+4*s+20)))
evans(sys)
syms s
d=derivat(sys)
n=numer(d)
a=roots(n)    //a=breakaway points
disp(a,"breakaway points=")
for i=1:3
    K=-a(i,1)*(a(i,1)+4)*(a(i,1)^2+4*a(i,1)+20)
        disp(a(i,1),"s=")
        disp(K,"K=")
end
printf("if K is positive breakaway point lies on RL or else on CRL")
    