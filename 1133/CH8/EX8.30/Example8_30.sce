//example 10.9

clc;
clear;
close;
c = [0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0]; //taking the values for a mod -6 counter 
q = [0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1 0];
a = [0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0];
b = [0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0 1 1 1 1 0];
y1=q;
y2=a;
y3=b;
y11p=1;
y22p=1;
y33p=1;
y44p=1;
cp=1;
yf1p=1;
for i=1:25    // making arrays to draw the output 
    if y1(i)==1 then
        for o=1:100
        y11(y11p)=1;
        y11p=y11p+1;
        end
    else
        for o=1:100
        y11(y11p)=0;
        y11p=y11p+1;
        end

end
if y2(i)==1 then
        for o=1:100
        y21(y22p)=1;
        y22p=y22p+1;
        end
    else
        for o=1:100
        y21(y22p)=0;
        y22p=y22p+1;
        end

end
if y3(i)==1 then
        for o=1:100
        y31(y33p)=1;
        y33p=y33p+1;
        end
    else
        for o=1:100
        y31(y33p)=0;
        y33p=y33p+1;
        end

end
if c(i)==1 then
        for o=1:100
        c1(cp)=1;
        cp=cp+1;
        end
    else
        for o=1:100
        c1(cp)=0;
        cp=cp+1;
        end
end

end
z=[2 2];   
subplot(4,1,1); //ploting the out put 
title('Timing Diagram');
plot(c1);
plot(z);
ylabel('QA');
subplot(4,1,2);
plot(y11);
ylabel('QB');
plot(z);
subplot(4,1,3);
plot(y21);
ylabel('QC');
plot(z);
subplot(4,1,4);
plot(z);
ylabel('QD');
plot(y31);
disp("The counter goes through states 0000 (Decimal 0) to 1011 (Decimal 11), i.e., through 12 states. Thus it is a MOD-12 counter.")
