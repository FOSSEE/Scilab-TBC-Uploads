//Exercise 1.3
//Example  1.3.6
//Adding,Subtracting and multiplying Rational Numbers
function[]=rational(x1,x2,x3,x4)
rational1=struct('numerator',x1,'denominator',x2);
disp(rational1);
rational2=struct('numerator',x3,'denominator',x4);
disp(rational2);
//Add
x5=int32([x2 x4]);
x5=lcm(x5);
x6=x1*(x5/x2)+x3*(x5/x4);
rational3=struct('numerator',x6,'denominator',x5);
disp(rational3,"After addition");
//subtract
x6=x1*(x5/x2)-x3*(x5/x4)
rational4=struct('numerator',x6,'denominator',x5);
disp(rational4,"After Subtraction");
//Multiply
x7=x1*x3;
x8=x2*x4;
rational5=struct('numerator',x7,'denominator',x8);
disp(rational5,"After multiplication");
endfunction
x1=43;
x2=32;
x3=233;
x4=33;
rational(x1,x2,x3,x4);