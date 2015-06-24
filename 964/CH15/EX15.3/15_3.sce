clc;
clear;
x1=[4.888889 3.888889];
x2=[7 11];
x3=[10 8];
x4=[150 175];
x5=[77 80 9 6];
profit=[x1(1)*x4(1) x1(2)*x4(2)];
total=[x1(1)*x3(1)+x1(2)*x3(2) x1(1)*x3(1)+x1(2)*x3(2) x1(1) x1(2) profit(1)+profit(2)];
e=1000;

while e>total(5)
    if total(1)<=x5(1) then
        if total(2)<=x5(2) then
            if total(3)<=x5(3) then
                if total(4)<=x5(4) then
                    l=1;
                end
            end
        end
    end
    if l==1 then
        x1(1)=x1(1)+4.888889;
        x1(2)=x1(2)+3.888889;    
        profit=[x1(1)*x4(1) x1(2)*x4(2)];
        total(5)=profit(1)+profit(2);
    end
end
disp(total(5),"The maximized profit is=")
