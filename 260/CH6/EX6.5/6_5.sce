//Eg-6_5
//pg-287            

clear
clc



//Bottle no -total pesticide(ppb)
A=[ 1 15;2 23;3 12.2;4 18.8;5 19.5;6 16.6;7 21.7;8 16.8;9 20.2;10 21.3];
//considering no of intervals as 5
n=5;
r=(max(A(:,2))-min(A(:,2)))/n;
for i=1:5
    x(i)=min(A(:,2))+i*r;
    c=0;
    for j=1:10
        if A(j,2)<=x(i) then
            c=c+1;
        end
    end
    f(i)=c/10;
end

C=[x f];

disp("cumulative distribution function")
disp(C)