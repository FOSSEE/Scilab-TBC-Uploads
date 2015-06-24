//example 8.12

clc;
clear;
close;
qn=[0,0,1,1];
x=[0,1,0,1];
for i=1:4 // calculating Y for all possible cases 
    d(i)= bitxor(x(i),qn(i));
    qn1(i) =d(i);
    y(i)=bitand(x(i),bitcmp(qn(i),1));
end;
for i = 1 : 4  // displaying the state table 
        Y(i,1)=qn(i);
        Y(i,2)=x(i);
        Y(i,3)=d(i);
        Y(i,4)=qn1(i);
        Y(i,5)= y(i);
        end
disp('The state table  is :');
disp('   Qn    X     D    Qn+1   Y');
disp(Y);
