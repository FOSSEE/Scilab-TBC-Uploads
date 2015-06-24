clc;
clear;
close;
t=320; 
p=1;
while p<t*1 //making arrays for ploting 
    if p==1 | modulo(p,t)==0 then
        for k=1:t/2
            qd(p+k)=0;
        end
         p=p+t/2;
        else 
            qd(p)=1;
            p=p+1;
        end
end
t=160;
p=1;
while p<t*2
    if p==1 | modulo(p,t)==0 then
        for k=1:t/2
            qc(p+k)=0;
        end
         p=p+t/2;
        else 
          qc(p)=1;
            p=p+1;
        end
end
t=80;
p=1;
while p<t*4
    if p==1 | modulo(p,t)==0 then
        for k=1:t/2
            qb(p+k)=0;
        end
         p=p+t/2;
        else 
          qb(p)=1;
            p=p+1;
        end
end
t=40;
p=1;
while p<t*8
    if p==1 | modulo(p,t)==0 then
        for k=1:t/2
            qa(p+k)=0;
        end
         p=p+t/2;
        else 
          qa(p)=1;
            p=p+1;
        end
end
t=20;
p=1;
while p<t*16
    if p==1 | modulo(p,t)==0 then
        for k=1:t/2
            clk(p+k)=0;
        end
         p=p+t/2;
        else 
          clk(p)=1;
            p=p+1;
        end
end
for i=320:350
    clk(i)=0;
    qa(i)=0;
    qb(i)=0;
    qc(i)=0;
    qd(i)=0;
end;
y=[3 3]; //ploting the graphs  
subplot(5,1,1)
title('Clock')
plot(clk)
plot(y)
subplot(5,1,2)
title('Qa')
plot(qa)
plot(y)
subplot(5,1,3)
title('Qb')
plot(qb)
plot(y)
subplot(5,1,4)
title('Qc')
plot(qc)
plot(y)
subplot(5,1,5)
title('Qd')
plot(qd)
plot(y)