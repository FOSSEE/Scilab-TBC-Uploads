syms K
s=%s;
G=syslin('c',(K*(s+1)*(s+2))/((s+0.1)*(s-1)))
evans(G)
n=2;
disp(n,"no of poles=")
m=2;
disp(m,"no of zeroes=")
K=kpure(G)
disp(K,"value of K where RL crosses jw axis=")
d=derivat(G)
p=numer(d)
a=roots(p);    // a=breakaway points
disp(a,"breakaway points=")
for i=1:2
    K=-(a(i,1)+0.1)*(a(i,1)-1)/((a(i,1)+1)*(a(i,1)+2))
    disp(a(i,1),"s=")
    disp(K,"K=")
end
printf("zeta=1 is achieved when the two roots are equal and negative(real).This happens at the breakaway point in the left half s-plane/n")
zeta=1;
wn=0.6;
sgrid(zeta,wn)
K=-1/real(horner(G,[1 %i]*locate(1)));
disp(K,"The corresponding value of gain is=")

