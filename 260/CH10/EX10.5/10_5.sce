//Eg-10.5
//pg-437

clear
clc
close()

X = [0;5;10;15];

Y = [53;127;213;378];

T = zeros(4,4);

T(:,1) = Y;

for(j = 2:4)
    for(i = 1:4+1-j)
        T(i,j) = T(i+1,j-1) - T(i,j-1);
    end
end

//disp(T)

// Using Gauss backward formula

//p3 = f + d*A + d2*A(A+1)/2 + d3*A*(A-1)*(A+1)/6

//Note that 'alpha' is replaced by A and 'small delta' by d

f = T(3,1);
d = T(2,2);
d2 = T(2,3);
d3 = T(1,4);

A = (7-10)/5;

p37 = f + d*A + d2*A*(A+1)/2 + d3*A*(A-1)*(A+1)/6;

printf('Therefore, the number of houses after seven years is %d\n',p37)
