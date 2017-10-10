//Eg-4.17
//pg-184

clear
clc


clc;
clear;
Aold=[1 -3 2 0 0];//4-7 terms are added inorder to satisfy condition no.84 in book
n=0;
r=1;
//iterations are continued till 10^35
while r/10^35 <= 1
    for i=1:2
        summ=0;
        for k=1:i
            summ=summ+2*((-1)^k)*Aold(i+k+1)*Aold(i+1-k); 
        end
        Anew(i)=((-1)^i)*((Aold(i+1))^2+summ);
    end
    Aold=[1 Anew(1) Anew(2) 0 0 ];
    r=max(abs(Anew));
    n=n+1;
end


r1=abs(Anew(1))^(1/2^n);
r2=abs(Anew(2)/Anew(1))^(1/2^n);

disp(r1);
disp(r2);