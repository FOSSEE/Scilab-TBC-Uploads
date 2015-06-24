//Example 12.4
clc
clear
V_A=0 
//a=input("Enter the binary digit(5 bits) :" );
a=11010
for i=1:5
    r=modulo(a,10);
    b(1,i)=r;
    a=a/10;
    a=floor(a);
end
for j=1:5
V_A = V_A + 10*b(1,j)*2^(j-1);
end;
V_A=V_A/2^5;
disp("The output voltage in volts is ');
disp(V_A); // displaying the value