clc
clear 
a=0.2
b=2.6
function p=f(c)
    p=exp(-c.^2)
endfunction

for n=6:6:24
a=0.2
ST=0
h=(b-a)/n
for i=1:n+1
    T=[a,f(a)]
    A(1,i)=a
    a=a+h
end
for i=2:n
    ST=ST+2*f(A(1,i))
end
TZ(1,n)=(h/2)*(f(0.2)+f(2.6)+ST)
end
for n=6:6:24
a=0.2
ST1=0
ST2=0
h=(b-a)/n
for i=1:n+1
    A(1,i)=a
    a=a+h
    
end

for i=2:2:n-2
    ST1=ST1+2*f(A(1,i+1))
    ST2=ST2+4*f(A(1,i))
end
 ST2=ST2+4*f(A(1,n))

TS3(1,n)=(h/3)*(f(0.2)+f(2.6)+ST1+ST2)

end
for n=6:6:24
a=0.2
ST1=0
ST2=0
ST3=0
h=(b-a)/n
for i=1:n+1
    A(1,i)=a
    a=a+h
end
for i=2:3:n-3
    ST1=ST1+3*f(A(1,i))
    ST2=ST2+3*f(A(1,i+1))
    ST3=ST3+2*f(A(1,i+2))
end
 ST2=ST2+3*f(A(1,n))
 ST1=ST1+3*f(A(1,n-1))

TS38(1,n)=(h*3/8)*(f(0.2)+f(2.6)+ST1+ST2+ST3)
end
for i=1:4
    n=i*6
    R=[n, TZ(1,n), 0.6886527145-TZ(1,n),TS3(1,n),0.6886527145-TS3(1,n),TS38(1,n),0.6886527145-TS38(1,n)]
    disp(R)
end


