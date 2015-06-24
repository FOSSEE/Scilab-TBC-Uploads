clc
//Chapter1: Signals
//Example2,page no12
//Given:
//a  // Referance Figure on page no 9.. (1.6d)
t=0:2*3.14,t0=0,t1=2*3.14
disp('a) The value of constants Cn are:')
for i=1:7
    C(i)=((integrate('sin(i*t)','t',t0,t1/2)-integrate('sin(i*t)','t',t1/2,t1))/integrate('(sin(i*t))^2','t',t0,t1))
    if C(i)<=0.01 then C(i)=0
    end
    mprintf('%f    for n= %d\n',C(i),i)
end
//b Mean Square error

int1=integrate('(1)^2','t',t0,t1)
for n=1:7
    if modulo(n,2)==0 then
        C(n)=0
    else
    C(n)=4/(n*%pi)
end
end
for n=1:7
 
    K(n)=integrate('(sin(n*t))^2','t',t0,t1)
 
end
K(n)=%pi

for n=1:7
S(1)=0 
    S(n+1)=S(n)+(((C(n))^2)*K(n))
 
end
//Mean Square error
for n=1:7
    epsi(n)=(1/(t1-t0)*(int1-S(n+1)))
end
disp('b) Mean Square error is')
for n=1:2:7
mprintf('epsi(%d)=%f\n',n,round(100*epsi(n))/100)

end


