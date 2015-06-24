//example 9.5, page 343
clc
Z=[16 8 3]
//Argon numbers

for n=1:1:3
E=(-((Z(n))/n)**2)*13.6
printf("\n The electric field for n=%d is  %f  ev",n, E)
disp(E)
end
//Answer differnce is because of round off
