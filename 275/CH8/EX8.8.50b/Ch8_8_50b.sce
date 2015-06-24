clc
clear
disp("Example 8.50b")
printf("\n")
disp("Construct the Truth Table for logic expression")
disp("AB1+A1B")
A=[0 0 1 1]
B=[0 1 0 1]
for i=1:length(A)
  f(i)=(A(i)*(~(B(i))))+(B(i)*(~(A(i))))
  if(f(i)==2)
    f(i)=1
  end
end
printf("truth table =%d%d%d%d",f(1),f(2),f(3),f(4))