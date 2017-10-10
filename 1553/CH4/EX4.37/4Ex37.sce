//chapter 4 Ex 37

clc;
clear;
close;
cost1=86; cost2=112;
x=poly(0,'x');
y=(cost1-2*x)/3;        //equation 1
y=cost2-4*x;    //equation 2
for x=1:99
  if  (cost1-2*x)/3==cost2-4*x
    break
  end
end
y=cost2-4*x;
printf("The cost of pen is Rs.%d and that of pencil is Rs.%d",x,y);
 
