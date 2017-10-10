//Eg-9.7
//pg-403

clc
clear

p=6.5;
n = 6;
a = 0.5;
prodd=1;

for i = 1:n
    prodd = prodd*(p-i);
end

req=prodd*(22/7)^.5

disp("required value")
disp(req)

printf('\n\n The minor difference in the answer is because of using the value of 22/7 in the place of pi\n')