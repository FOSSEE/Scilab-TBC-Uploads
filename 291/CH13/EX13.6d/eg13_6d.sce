X = [29 33 35 42 36 44 43 45];
u =30;
sig = 8;
d =0.5;
B =5;
Y = X - u - (d*sig);
S = zeros(9);
S(1) =0;
for i=2:9
    S(i)= max(S(i-1) + Y(i-1), 0);
end
disp(S, "S is")
cl = B*sig;
disp(cl)
answer =100;
for i=1:9
    if(S(i)>cl)
        answer = i;
    end   
end
disp("The mean has increased after observing the ")
disp(answer-1);
disp(" subgroup average");