//chapter 4 Ex 15

clc;
clear;
close;
x=poly(0,'x');
y=(51-x)/4;        //equation 1
y=(43-3*x)/2;    //equation 2
for x=1:99
  if  (51-x)/4==(43-3*x)/2
    break
  end
end
y=(43-3*x)/2;
z=12-y+x;
printf("The values of x, y & z are: %d, %d, and %d respectively",x,y,z);
