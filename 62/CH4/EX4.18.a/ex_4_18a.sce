z=%z;
x=ldiv(z,2*z^2-3*z+1,5)
for i=5:-1:1
    y(6-i)=x(i)*2^i;
end
mprintf('x[n]={ . . . . %d %d %d %d 0}',y(2),y(3),y(4),y(5))