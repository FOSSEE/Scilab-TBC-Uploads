clc;
s = %s;
G = s^4+3*s^3+30*s^2+30*s+200;
disp(G);
co = coeff(G);
routh = [co([5,3,1]);co([4,2]) 0];
routh = [routh;-det(routh(1:2,1:2))/routh(2,1) routh(1,3) 0];
routh = [routh;-det(routh(2:3,1:2))/routh(3,1) (routh(3,1)*routh(2,3)-routh(2,1)*routh(3,3))/routh(3,1) 0];
routh= [routh;-det(routh(3:4,1:2))/routh(4,1) 0 0];
disp(routh,"routh table:");
printf("\n routh table contains a row of all zeroes.");
//creating an auxillary polynomial
temp = routh(3,:);
coef = coeff(temp);
aux = poly([coef(2) 0 coef(1)],"s","coeffs")/coef(1);
disp(aux,"auxillary polynomial:");
z = roots(G);
disp(z,"roots of polynomial:")
for i = 1:4
    A(i)=s+z(i);
    disp(A(i),"=",i,"factor");
end

//can be done by using factors(G) and roots(G) directly