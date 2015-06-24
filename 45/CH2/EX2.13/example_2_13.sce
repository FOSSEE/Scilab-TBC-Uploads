// exmple 2.13
//NAND - NAND 
clc
clear
close
a=[0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1];
b=[0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1];
c=[0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1];
d=[0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1];
for i=1:16
    x=bitand(a(i),b(i));
    y=bitand(c(i),d(i));
    r(i)=bitor(x,y);
end
disp('Truth table :');
disp('   A     B     C     D     Y')
for i = 1 : 16   // displaying the truth table 
        Y(i,1)=a(i);
        Y(i,2)=b(i);
        Y(i,3)=c(i);
        Y(i,4)=d(i);
        Y(i,5)=r(i);
end
disp(Y);