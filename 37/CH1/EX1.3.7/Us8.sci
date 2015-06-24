//Exercise 1.3
//Example 1.3.7
//Checking Equality Of 2 Rational Numbers Without Reducing Them
function[]=rational_equal(x1,x2,x3,x4)
rational1=struct('numerator',x1,'denominator',x2);
disp(rational1);
rational2=struct('numerator',x3,'denominator',x4);
disp(rational2);
if(x1*x4==x2*x3)
  disp("Equal");
  break;
else
  disp("Not  Equal");
  break;
end
endfunction
//Calling Routine:
x1=32;
x2=45;
x3=43;
x4=55;
rational_equal(x1,x2,x3,x4);