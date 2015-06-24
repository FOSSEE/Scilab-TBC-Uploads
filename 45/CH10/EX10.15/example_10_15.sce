//example 10.15 
//this program use kmap2.sci 
//kmap2.sci should be executed before executing this program
clc;
a= [0 0 1 1]
b= [0 1 0 1]
y= [1 1 0 1]
k= [1 1 ; 0 1]
bi = kmap2(k); // calling 2-variable kmap
disp("   A     B     Y");
for i=1:3
    Y(i,1) = a(i);
    Y(i,2) = b(i);
    Y(i,3) = y(i);
end
disp(Y);
disp('The minimised expression from karnaugh map is');// displaying the result
disp(bi);