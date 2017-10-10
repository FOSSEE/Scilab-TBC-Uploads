//chapter 4 Ex 14

clc;
clear;
close;
x=poly(0,'x');
y=(34-2*x)/3;        //equation 1
y=8*x/5;    //equation 2
for x=1:99
  if  (34-2*x)/3==8*x/5
    mprintf("x=%i \n ",x);
    break
  end
end
y=8*x/5;
printf("The value of 5*y+7*x is: %d",(5*y+7*x));
