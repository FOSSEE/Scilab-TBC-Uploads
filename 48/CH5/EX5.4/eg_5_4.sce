clc;
clear;
//Takes input and check whether it is valid logic level or not.
w=input("w = ");
while(w~=0 & w~=1)
    disp("enter a valid logical level");
    w=input("w = ");
end
x=input("x = ");
while(x~=0 & x~=1)
    disp("enter a valid logical level");
    x=input("x = ");
end
y=input("y = ");
while(y~=0 & y~=1)
    disp("enter a valid logical level");
    y=input("y = ");
end
z=input("z = ");
while(z~=0 & z~=1)
    disp("enter a valid logical level");
    z=input("z = ");
end
disp("We have 4 relays W,X,Y,Z which takes BCD number as input");
disp("so the max value value we can get is 1001");
disp("By drawing the Karnaugh map(consider all terms above 1001 as dont cares ) the minimised expression  is");
disp("T(w,x,y,z)=wz+xyz^+x^yz");
disp("T(w,x,y,z)=xyz^+x^yz");
disp("Draw the series parallel realization of T");
disp("We can identify the redundancy of y contact at the right end");
disp("which can be removed");
disp("The cutset realisation of the above minimized series parallel network  is");
disp("T(w,x,y,z)=(w+y)(x+z)(x^+z^)");