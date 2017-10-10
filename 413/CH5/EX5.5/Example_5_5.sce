clc
clear 
a=0
b=2
function p=fA(c,n)
    p=c*cos((n*c*%pi)/2)
endfunction
function q=fB(c,n)
    q=c*sin((n*c*%pi)/2)
endfunction
for n=1:5
for t=20:180:200
a=0
ST=0
ST1=0
h=(b-a)/t
for i=1:t+1
    A(1,i)=a
    a=a+h
end
for i=2:t
    ST=ST+2*fA(A(1,i),n)
    ST1=ST1+2*fB(A(1,i),n)
end
TZA(t,n)=(h/2)*(fA((0),n)+fA((2),n)+ST)
TZB(t,n)=(h/2)*(fB((0),n)+fB((2),n)+ST1)
end
end
for t=20:180:200
    
for n=1:5
a=0
ST1=0
ST2=0
ST3=0
ST4=0
h=(b-a)/t
for i=1:t+1
    A(1,i)=a
    a=a+h
end
for i=2:2:t-2
    ST1=ST1+2*fA(A(1,i+1),n)
    ST2=ST2+4*fA(A(1,i),n)
    ST3=ST3+2*fB(A(1,i+1),n)
    ST4=ST4+4*fB(A(1,i),n)
end
 ST2=ST2+4*fA(A(1,t),n)
 ST4=ST4+4*fB(A(1,t),n)
TSA3(t,n)=(h/3)*(fA(0,n)+fA(2,n)+ST1+ST2)

TSB3(t,n)=(h/3)*(fB(0,n)+fB(2,n)+ST3+ST4)

end
end
for t=20:180:200
    printf('Comparison of numerical integration of %f subdivisions of [0 2]',t)
for n=1:5
    T=[n,TZA(t,n),TZB(t,n),TSA3(t,n),TSB3(t,n)]
    disp(T)
end
end
