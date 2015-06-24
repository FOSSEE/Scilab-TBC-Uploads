  //Example 3.17
  clc
//Use of logical operators

i=int(7);
f=5.5;
c='w';
v=(i>=6)&(c=='w');
disp(v,"((i >= 6)&( c==w) )");

v = (i>=6) & ( ascii(c)==119);
disp(v,"((i >= 6)&( c==119) )");

v=(f < 11) & ( i > 100);
disp(v,"((f < 11) & ( i > 100) )");

v=(c~='p') | ((i+f)<= 10);
disp(v,"((c~=p) | ((i+f)<= 10) )");
