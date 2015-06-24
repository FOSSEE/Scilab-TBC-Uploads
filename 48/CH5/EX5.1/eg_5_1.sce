clc;
clear;
//Takes x input and check whether it is valid logic level or not.
x=input("x = ");
while(x~=0 & x~=1)
    disp("enter a valid logical level");
    x=input("x = ");
end
//Takes y input and check whether it is valid logic level or not.
y=input("y = ");
while(y~=0 & y~=1)
    disp("enter a valid logical level");
    y=input("y = ");
end
//Takes z input and check whether it is valid logic level or not.
z=input("z = ");
while(z~=0 & z~=1)
    disp("enter a valid logical level");
    z=input("z = ");
end
p1=bitand(bitand(bitcmp(x,1),bitcmp(y,1)),z);
p2=bitand(bitand(bitcmp(x,1),y),bitcmp(z,1));
p3=bitand(bitand(bitcmp(y,1),x),bitcmp(z,1));
p4=bitand(bitand(x,y),z);
p=bitor(bitor(p1,p2),bitor(p3,p4));
disp(p,"The output of the odd parity generator circuit is");
disp("p= x^y^z+x^yz^+xy^z^+xyz");