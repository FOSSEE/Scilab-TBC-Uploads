//EXAMPLE 6.13
//Determining proper fraction
clc;
clear;
z=%z;
num = 2*z^3 + 0.8*z^2 + 0.5*z +0.3;
den = (z^3 + 0.8*z^2 + 0.2*z);
func = num/den;
disp(func,'the polynomial function is H = ')

  if degree(num)>=degree(den) 
           disp('An  improper fraction');
      else disp('A proper fraction');
  end

disp('decomposing the fraction we get .....');

H1=func-(-3.5*z + 1.5)/z;
disp(H1,'H1 = ');
disp('H1 is a Proper fraction')




