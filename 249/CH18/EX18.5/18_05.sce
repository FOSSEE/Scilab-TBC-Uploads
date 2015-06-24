clear
clc
CAo=0.1;
eA=3;
rA=[3.4;5.4;7.6;9.1];
CA=[0.039;0.0575;0.075;0.092];
XA=zeros(4,1);
inv_rA=zeros(4,1);
for i=1:4
XA(i)=(1-CA(i)/CAo)/(1+eA*CA(i)/CAo);
inv_rA(i)=1/rA(i);
end
//W=FAo*integral(dXA/-rA) from 0 to 0.35
//Using Trapezoidal rule to find area,XA must be in increasing order
//Sorting XA and accordingly inv_rA
for i=1:4
    small=XA(i);
    for j=i:4
        next=XA(j);
        if small>next
            temp=XA(i);
            XA(i)=XA(j);
            XA(j)=temp;
            temp1=inv_rA(i);
            inv_rA(i)=inv_rA(j);
            inv_rA(j)=temp1;
        end
    end
end
plot(XA,inv_rA)
xlabel('XA');ylabel('-1/rA');
//extending points to include XA=0.35
XA(5)=0.35;inv_rA(5)=0.34;
Area=inttrap(XA,inv_rA);
W=Area*2000;
printf("Amount of catalyst needed(kg) is %f",W)
disp('The answer slightly differs from those given in book as trapezoidal rule is used for calculating area')
