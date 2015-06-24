clc;
clear;
//Takes x input and check whether it is valid logic level or not.
disp("enter the vaLue of input Line & controL signaLs C1 and C2");
x=input("x = ");
while(x~=0 & x~=1)
    disp("enter a vaLid LogicaL LeveL");
    x=input("x = ");1
end
//Takes C1 input and check whether it is valid logic level or not.
C1=input("C1 = ");
while(C1~=0 & C1~=1)
    disp("enter a vaLid LogicaL LeveL");
    C1=input("C1 = ");
end
//Takes C2 input and check whether it is valid logic level or not.
C2=input("C2 = ");
while(C2~=0 & C2~=1)
    disp("enter a vaLid LogicaL LeveL");
    C2=input("C2 = ");
end
disp("-------OUTPUT-------");
disp(L1=bitand(bitand(bitcmp(C1,1),bitcmp(C2,1)),x),"L1 = ");
disp(L2=bitand(bitand(bitcmp(C1,1),C2),x),"L2 = ");
disp(L3=bitand(bitand(C1,bitcmp(C2,1)),x),"L3 = ");
disp(L4=bitand(bitand(C1,C2),x),"L4 = ");
disp("L1=xC1^C2^");
disp("L2=xC1^C2");
disp("L3=xC1C2^");
disp("L4=xC1^C2^");
