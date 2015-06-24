clear
clc
disp("T(x,y,z)=(x+y)[x^(y^+z^)]^+x^y^+x^z^");
disp("From the properties 1. (ab)^=a^+b^ 2. (a+b)^=a^b^");
disp("T(x,y,z)=((x+y)(x+yz))+x^y^+x^z^");
disp("Multipliying the first 2 terms");
disp("T(x,y,z)=(x+xyz+xy+yz)+x^y^+x^z^");
disp("T(x,y,z)=(x(1+y+yz)+yz)+x^y^+x^z^");
disp("T(x,y,z)=x+yz+x^y^+x^z^");
disp("we know a+a^b=a+b");
disp("T(x,y,z)=x+y^+yz+x^z^");
disp("T(x,y,z)=x+z^+y^+yz");
disp("T(x,y,z)=x+z^+y^+z");
disp("since z+z^=1");
disp("T(x,y,z)=x+1+y^");
disp("T(x,y,z)=1")
