clc
clear
x=[1.7 1.9 2.1 2.3 2.50];
function a=expsin(x)
    a=exp(x).*sin(x)
endfunction
for i=1:1:4
function b=firstdivdiff(x)
b=(expsin(x(1,i+1))-expsin(x(1,i)))
endfunction
A(1,i)=firstdivdiff(x)
end
for i=1:1:3
function b=Secdivdiff(x)
b=(A(1,i+1)-A(1,i)) 
endfunction
B(1,i)=Secdivdiff(x)
end
for i=1:1:2
function b=thdivdiff(x)
b=(B(1,i+1)-B(1,i)) 
endfunction
C(1,i)=thdivdiff(x)
end
for i=1:1:1
function b=fodivdiff(x)
b=(C(1,i+1)-C(1,i))
endfunction
D(1,i)=fodivdiff(x)
end
out=[0,x(1,1),expsin(x(1,1)) ]
disp(out)
out1=[1,x(1,2),expsin(x(1,2)), A(1,1) ]
disp(out1)
out2=[2,x(1,3),expsin(x(1,3)), A(1,2), B(1,1) ]
disp(out2)
out3=[3,x(1,4),expsin(x(1,4)), A(1,3), B(1,2),C(1,1),D(1,1) ]
disp(out3)
out4=[4,x(1,5),expsin(x(1,5)), A(1,4), B(1,3),C(1,2) ]
disp(out4)