//Eg-4.19
//pg-193

clear
clc


a=[1 -14 71.74 -153.9 122.2525];

b0=0;
b01=1;
g=-1;
d=1;
printf('The results for 10 iterations are presented below\n\n')
printf(' i        g          d            b1            b2            r1          r2\n')
for i=1:10
  b1=a(2)-g*b01-d*b0;
  b2=a(3)-g*b1-d*b01;
  r1=a(4)-g*b2-d*b1;
  r2=a(5)-d*b2;
  dnew=a(5)/b2;
  gnew=(a(4)-dnew*b1)/b2;
  d=dnew;
  g=gnew;
  printf(' %d    %f    %f    %f    %f    %f    %f\n',i,g,d,b1,b2,r1,r2)
end

  