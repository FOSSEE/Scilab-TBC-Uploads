//Basic Circuit Concepts
//pg no- 1.12
//example 1.4
disp("Applying KVL to the closed path OBAO");//Applying KVL to the closed path OBAO
disp("3*x-3*y=2");
disp("Applying KVL to the closed path ABCA");//Applying KVL to the closed path ABCA
disp("9*x+12*y=4");
a=[3 -3;9 12];
b=[2 4]'
disp("a=")
disp(a)
disp("b=")
disp(b)
X=inv(a)*b;
disp(X)
disp("x=0.5714286 Ampere");
disp("y=-0.095238 Ampere");
disp("Ioa=0.57A")
disp("Iob=1-0.57")
Iob=1-0.57;
printf("\nIob = %2f A", Iob);
disp("Iab = 0.095");
Iac=0.57-0.095;
printf("\nIac = %2f A", Iac);
disp("Iab=1-0.57 + 0.095")
Iab=1-0.57 + 0.095;
printf("\nIob = %2f A", Iab) 