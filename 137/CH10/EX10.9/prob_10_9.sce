// page no 446
//problem no 10.9
clc;
m=input("enter the number of faces = "); 
n=input("enter the number of dice = "); 
l=m^n ;// j is total number of outcomes 
a=input("enter the number which is to be obtained as the sum of dice  = ") // a is varied from 2 to 12
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
  