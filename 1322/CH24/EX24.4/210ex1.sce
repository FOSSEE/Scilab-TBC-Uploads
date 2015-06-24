
//sum of A.P of 8 terms is 90.1st term is 6.
clear;
clc;
close;
// using s=n*{2*a+(n-1)*d}/2 
//substituting given values
for d=0:0.001:100
  if(90==8/2*{2*6 + (8-1)*d})
format(5)
d
    break
  end
end
