//Construction of Forward Difference Table
close();
clear;
clc;
x = poly(0,'x');
fx = (x-1)*(x+5)/((x+2)*(x+1));
xi = linspace(0.0,0.8,9); 
x0 = 0;
h = 0.1;
format('v',9);
// values of function at different xi's
fi = horner(fx , xi);
// First order difference
for j = 1:8
  delta1_fi(j) = fi(j+1) - fi(j);
end
// Second order difference
for j = 1:7
  delta2_fi(j) = delta1_fi(j+1) - delta1_fi(j);
end
// Third order difference
for j = 1:6
  delta3_fi(j) = delta2_fi(j+1) - delta2_fi(j);
end
// Fourth order difference
for j = 1:5
  delta4_fi(j) = delta3_fi(j+1) - delta3_fi(j);
end

disp(fi , 'Values of f(x) : ')
disp(delta1_fi , 'First Order Difference :')
disp(delta2_fi , 'Second Order Difference :')
disp(delta3_fi , 'Third Order Difference :')
disp(delta4_fi , 'Fourth Order Difference :')
