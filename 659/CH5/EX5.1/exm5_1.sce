//                     Example 5.1
// The program reads four values a,b,c and d from the terminal and 
//evaluates the ratio of (a+b) to (c+d) and prints the result,if c-d 
//is not equal to zero

disp("Enter four integer values");
a=int8(input("a="));
b=int8(input("b="));
c=int8(input("c="));
d=int8(input("d="));

if(c-d ~= 0) then      //Execute statement block
    ratio=double(a+b)/double(c-d);
    printf("Ratio=%f\n",ratio);
end