//example 3.9
clc;
clear;
close;
c = [1 1 0 0 0 0 0]; //given values
a= [1 1 1 1 1 1 1];
b= [1 1 1 1 1 1 1] ;
for i=1:7    
    y1(i)=0
    y2(i)=1
    y3(i)=0
    y4(i)=1
    y(i)=0
end
for(i=1: 7) // finding the Y values for next clock periods 
y1(i+1) = bitcmp(c(i),1);
y2(i+1) = bitand(a(i),c(i));
end;
for i=1: 5
y3(i+2) = bitand(y1(i+1),b(i));
end;
for i=1:4
y4(i+3) = bitor(y3(i+2),y2(i+2));
end;
for i=1:3
y(i+4)   =  bitand(y4(i+3),y1(i+3));
end;
y11p=1;
y22p=1;
y33p=1;
y44p=1;
cp=1;
yf1p=1;
for i=1:7  // ploting all of them in to  graph
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
        //z(bp)=3
        end
    else
        for o=1:100
        y21(y22p)=0;
        y22p=y22p+1;
        //z(bp)=3
        end
end
if y3(i)==1 then
        for o=1:100
        y31(y33p)=1;
        y33p=y33p+1;
        //z(bp)=3
        end
    else
        for o=1:100
        y31(y33p)=0;
        y33p=y33p+1;
        //z(bp)=3
        end
end
if y4(i)==1 then
        for o=1:100
        y41(y44p)=1;
        y44p=y44p+1;
        //z(bp)=3
        
        end
    else
        for o=1:100
        y41(y44p)=0;
        y44p=y44p+1;
        //z(bp)=3
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
if y(i)==1 then
        for o=1:100
        yf1(yf1p)=1;
        yf1p=yf1p+1;
        end
    else
        for o=1:100
        yf1(yf1p)=0;
        yf1p=yf1p+1;
        end
    end
end
z=[2 2];   //ploting the results 
subplot(6,1,1);
title('Timing Diagrm');
plot(c1);
plot(z);
ylabel('C');
subplot(6,1,2);
plot(y11);
ylabel('Y1');
plot(z);
subplot(6,1,3);
plot(y21);
ylabel('Y2');
plot(z);
subplot(6,1,4);
plot(z);
ylabel('Y3');
plot(y31);
subplot(6,1,5);
plot(z);
ylabel('Y4');
xlabel('Time in milli seconds');
plot(y41);
subplot(6,1,6);
plot(z);
ylabel('Y');
xlabel('Time in milli seconds');
plot(yf1);
