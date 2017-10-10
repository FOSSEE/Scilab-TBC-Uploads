//Eg-10.1
//pg-430

clear
clc

//Since the interpolating polynomial is of order 3 we have 4 unknown coefficients a0,a1,a2,a3.

//The polynomial finally looks like a3x^3 + a2*x^2 + a1*x + a0 = f(x)

x = [1;2;3;4];
 
for(i = 1:4)
    for(j = 1:4)
        A(i,j) = x(i)^(j-1);
    end
end



B = [2;3.5;3;4];

T(1:4,1:4) = A;
T(:,5) = B;



//Gauss Elimination

for(i = 2:4)
    T(i,:) = T(i,:) - T(1,:)
end

for(i = 3:4)
    T(i,:) = T(i,:) - T(i,2)/T(1,2)*(T(2,:));
end


T(4,:) = T(4,:) - T(4,3)/T(3,3)*(T(3,:));


for(i=1:4)
    T(i,:) = T(i,:)/T(i,i);
end

for(i = 1:3)
    T(4-i,:) = T(4-i,:) - T(4,:)*T(4-i,4);
    
end

for(i = 1:2)
    T(3-i,:) = T(3-i,:) - T(3,:)*T(3-i,3);
end

T(1,:) = T(1,:) - T(2,:);

X = T(:,5);

h = poly(X,'x',"coeff")

disp(X)
disp(h)
