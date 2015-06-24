clc;
clear;
y='y';
i=1;
//Takes the equivalent decimal value of the min terms for eg: x^yz=011=3
while(y=='y')
    disp("enter the minterm of a 3 variable function");
    x(i)=input(": ");
    while(x(i)>7)
        disp("enter a valid minterm");
    end
    disp("press y if you want to enter more min terms else n :");
    y=input("");
    i=i+1;
end
a=1;
//Generating truth table for determining the inequalities
for i=0:1
    for j=0:1
        for k=0:1
            for z=1:length(x)
                if(x(z)==a-1);
                    f(a,4)=1;
                end
            end
            f(a,1)=i;
            f(a,2)=j;
            f(a,3)=k;
            a=a+1;
        end
    end
end
//displaying the truth table
disp("   x1     x2     x3     f");
disp(f);
disp("");
a=1;
//generating inequalities
for i=0:1
    for j=0:1
        for k=0:1
            if(f(a,4)==1)
                printf('%3d * w1 + %3d * w2 + %3d * w3>=T',f(a,1),f(a,2),f(a,3))
                disp("")
            else
                printf('%3d * w1 + %3d * w2 + %3d * w3<T',f(a,1),f(a,2),f(a,3))
                disp("")
            end
            a=a+1;
        end
    end
end
disp("By solving the above inequalities we can get the values of weights and T");