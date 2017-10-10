//Eg-4.20
//pg-198

clear
clc


a=[1 -10  50 -120 144];

b0=0;
b01=1;
g=-1;
d=1;
for i=1:60
  b1=a(2)-g*b01-d*b0;
  b2=a(3)-g*b1-d*b01;
  r1=a(4)-g*b2-d*b1;
  r2=a(5)-d*b2;
  dnew=a(5)/b2;
  gnew=(a(4)-dnew*b1)/b2;
  d=dnew;
  g=gnew;
end
disp("Hence gamma delta b1 b2 are respectively")
disp(g);
disp(d);
disp(b1);
disp(b2);

m=[8 -4 1];
f=poly(m,'x','c');
p=roots(f);
disp("two roots are")
disp(p);

m=[18 -6 1];
f=poly(m,'x','c');
p=roots(f);
disp("other two roots are");
disp(p);


disp("second part")

a=[1 -8 27 -50 50];

b0=0;
b01=1;
g=-1;
d=1;
for i=1:60
  b1=a(2)-g*b01-d*b0;
  b2=a(3)-g*b1-d*b01;
  r1=a(4)-g*b2-d*b1;
  r2=a(5)-d*b2;
  dnew=a(5)/b2;
  gnew=(a(4)-dnew*b1)/b2;
  d=dnew;
  g=gnew;
end
disp("Hence gamma delta b1 b2 are respectively")
disp(g);
disp(d);
disp(b1);
disp(b2);

m=[5 -2 1];
f=poly(m,'x','c');
p=roots(f);
disp("two roots are")
disp(p);

m=[10 -6 1];
f=poly(m,'x','c');
p=roots(f);
disp("other two roots are");
disp(p);


