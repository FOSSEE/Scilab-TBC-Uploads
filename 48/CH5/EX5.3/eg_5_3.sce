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
disp("original network x^[((y^z+z^y)w^)+w+y^+x^z^]");
disp("x^[w^y^z+w^yz^+w+y^+x^z^]");
disp("x^[y^(w^z+1)+w^yz^+w+x^z^]");
disp("x^[y^+w+yz^+x^z^]");
disp("x^[y^+yz^+w+x^z^]");
disp("x^[y^+z^+x^z^+w]");
disp("x^[y^+z^+w]");
//output of the relay network for the inputs given
disp(p=bitand(bitcmp(x,1),bitor(bitor(bitcmp(y,1),bitcmp(z,1)),w)),"output = ");