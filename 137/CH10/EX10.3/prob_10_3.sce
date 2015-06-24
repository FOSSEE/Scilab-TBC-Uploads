// page no 438
//problem no 10.3
clc;
m=input("enter the number of faces = ");// m = 6
n=input("enter the number of dice = ");// n = 2
l=m^n ;// j is total number of outcomes = 36
a=input("enter the number which is to be obtained as the sum of dice  = ") // a=7
c=0 ; // counter value for favorable outcome
for i=1:6
  for j=1:6
    if(i+j==a)
      c=c+1;
    else 
      continue
   end
  end
end
p=c/l;
disp(p,"probability = ");
  