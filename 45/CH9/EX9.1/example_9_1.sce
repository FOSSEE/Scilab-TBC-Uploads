//example 9.1
clc;
clear;
close ;
//s = input ('Enter the number to be serially shifted in to the shift register');
s=0100; // given serial input
for i = 4:-1:1
    se(i) =modulo(s,10);
    s=s/10;  
    s=round(s);
end
se(i+4)=0;
k=0;
for i = 2:6  // making state table  
    clk(k+1) = k;
    q(i)=se(i-1);
    if i>1 then
        r(i) = q(i-1);
    else
        r(i) =0;
    end;
    if i>2 then
        s(i) = r(i-1);
    else
        s(i) =0;
    end;
    if i>3 then
        t(i) =s(i-1);
    else
        t(i) =0;
    end;
    k=k+1; 
end
for i = 1 : 5 // printing the state table 
        Y(i,1)=clk(i);
        Y(i,2)=se(i);
        Y(i,3)=q(i);
        Y(i,4)=r(i);
        Y(i,5)= s(i);
        Y(i,6)=t(i);
        end
disp('The state table  is :');
disp('Clock  Input   Q     R     S     T');
disp(Y);

