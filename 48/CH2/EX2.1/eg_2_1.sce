clear;
clc;
//lower=input("input the lower limit of the set");
//upper=input("input the upper limit of the set");
lower=1;    //lower limit of the set 
upper=10;   //upper limit of the set
temp=lower;
h=1;i=1;
while(temp<=upper)
    if(modulo(temp,2)==0)       //checking whether a number is even or not
        e(h)=temp;
        h=h+1;
    else
        o(i)=temp;             //odd number 
        i=i+1;
    end
    temp=temp+1;
end;
disp("the set of even number between the limits")
disp(e);
disp("the set of odd number between the limits")
disp(o);
