//Eg-5.18
//pg-260

clear
clc

A=[1 3 6;3 5 7;6 7 4];

for l=20:-2:-6
    p0l=1;
    p1l=A(1,1)-l;
    p2l=(A(2,2)-l)*p1l-A(1,2)^2;
    p3l=(A(3,3)-l)*p2l-p1l*A(2,3)^2;
    printf('lambda=%f,phi0lambda=%f,phi02ambda=%f,phi03ambda=%f',l,p0l,p1l,p2l,p3l)
end