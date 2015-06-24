// exmple 2.14
clc
clear
close
a=[0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1];
b=[0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1];
c=[0 0 1 1 0 0 1 1 0 0 1 1 0 0 1 1];
d=[0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1];
for i=1:16
    x=bitand(a(i),b(i));
    y=bitand(c(i),d(i));
    r(i)=bitor(x,y);
end
Y=r
ap=1;
bp=1;
cp=1;
dp=1;Yp=1;
for i=1:16    //Making arrays to plot the timing diagram
    if a(i)==1 then
        for o=1:100
        a1(ap)=1;
        ap=ap+1;
        end
    else
        for o=1:100
        a1(ap)=0;
        ap=ap+1;
        end

end
if b(i)==1 then
        for o=1:100
        b1(bp)=1;
        bp=bp+1;
        //z(bp)=3
        end
    else
        for o=1:100
        b1(bp)=0;
        bp=bp+1;
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
if d(i)==1 then
        for o=1:100
        d1(dp)=1;
        dp=dp+1;
        end
    else
        for o=1:100
        d1(dp)=0;
        dp=dp+1;
        end

    end
if Y(i)==1 then
        for o=1:100
        Y1(Yp)=1;
        Yp=Yp+1;
        end
    else
        for o=1:100
        Y1(Yp)=0;
        Yp=Yp+1;
        end

    end

end
z=[2 2];   
subplot(5,1,1);   //plotting timing diagram 
title('Timing Diagrm');
plot(z);
plot(a1);
ylabel('A');
subplot(5,1,2);
plot(z);
ylabel('B');
plot(b1);
subplot(5,1,3);
plot(z);
ylabel('C');
plot(c1);
subplot(5,1,4);
plot(z);
ylabel('D');
plot(d1);
subplot(5,1,5);
plot(z);
ylabel('Y');
xlabel('Time in milli seconds');
plot(Y1);
