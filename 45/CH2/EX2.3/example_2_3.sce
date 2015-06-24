// exmple 2.3
clc
clear
close
a=[0 0 1 1];
b=[0 1 0 1];
for i=1:4
    r(i)= bitor(bitcmp(a(i),1), bitcmp(b(i),1))    // given expression
end
disp('   A     B     Y')
for i = 1 : 4
        Y(i,1)=a(i);
        Y(i,2)=b(i);
        Y(i,3)=r(i);
        end
disp(Y);  //displaying truth table 
disp('''1'' represents a HIGH(H) and ''0'' represents a LOW(L)')