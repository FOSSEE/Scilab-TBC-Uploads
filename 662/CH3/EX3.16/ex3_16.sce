  //Example 3.16
  clc
// Use of Relations operators with different type oprands

i=int(7);
f=5.5;
c='w';
v=f >5;
disp(v,"(f > 5)");

v= (i+f) <= 10;
disp(v,"((i + f ) <= 10)"); 

v= ascii(c)==119;
disp(v,"( c==119)");

v= c<>'p';
disp(v,"(c ~= p)");

v= ascii(c) >=10*( i + f );
disp(v,"(c >=10*(i + f ))");
