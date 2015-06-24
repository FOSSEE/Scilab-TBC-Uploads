x=1;
y=2;
z=3;
A=[x,y,z];
disp('cardinality of set A is:')
length(A)  
B=[1,3,5,7,9]
disp('cardinality of set B is:')
length(B)

// 3.9 (b)
disp('the set E has the following elements)
E=[2,4,6 %inf]  //set E is the set of all positive even numbers and N is the set of all natural numbers
disp('function f:N to E is defined.So,E has the same cardinality as N')
disp('set E is countably infinite:')
for x=2:2:%inf
y=2*x;
disp(y)
end