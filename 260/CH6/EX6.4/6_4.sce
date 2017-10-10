//Eg-6_4
//pg-284            

clear
clc

s=[9;10;14;16;12];
n=0;
m=0;
for i=1:5
    if s(i)<=10 then
        n=n+1;
    end
end

for i=1:5
    if s(i)<15 then
        m=m+1;
    end
end

prob_10=n/5;
prob_15=m/5;

disp("probability of getting ash content 10 and 15% are")
disp(prob_10)
disp(prob_15)