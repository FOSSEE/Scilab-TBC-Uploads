//Caption:initial_values
// example 1.6.7
//page 13
//F(s)=(4*s+1)/(s^3+2*s)
s=%s;
syms t;
F=(4*s+1)/(s^3+2*s)
f = ilaplace (F,s,t);
y=limit(f,t,0);//initial value theorem
y=dbl(y);
disp(y,"f(0+)=")
// since F'(s)=sF(s)-f(0+) where L(f'(t))=F'(s)=F1
F1=(4*s+1)/(s^2+2)
f1= ilaplace(F1,s,t);
y1=limit(f1,t,0);//initial value theorem
y1=dbl(y1);
disp(y1,"f_prime(0+)=")
// since F''(s)=(s^2)*F(s)-s*f(0+)-f'(0+) where L(f''(t))=F''(s)=F2
F2=(s-8)/(s^2+2)
f2= ilaplace(F2,s,t);
y2=limit(f2,t,0);//initial value theorem
y2=dbl(y2);
disp(y2,"f_doubleprime(0+)=")