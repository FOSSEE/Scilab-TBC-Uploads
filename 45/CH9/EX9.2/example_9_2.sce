//example 9.2
clc
clear
close
t1=100; // clock period
s=0100; //given serial input 
for i = 4:-1:1
    se(i) = modulo(s,10);
    s=s/10;  
    s=round(s);
end
se(i+4)=0;
k=0;
for i = 2:6 //initially making a state table 
    clk(k+1) = k;
    q(i)=se(i-1);
    if i>1 then
        r(i) = q(i-1);
    else
        r(i) =0;
    end;
    if i>2 then
        s(i) = r(i-1);
    else
        s(i) =0;
    end;
    if i>3 then
        t(i) =s(i-1);
    else
        t(i) =0;
    end;
    k=k+1;
end
for m=1:5   // drawing the graph 
    if(se(m)==1) then
       v= ((m-1).*t1)
        for u= 1: t1
            se1(u+v)=1;
            end
        else  
            v= ((m-1)*t1)
            for  u= 1: t1
                se1(u+v)=0;
            end
        end;
        
        if(q(m)==1) then
       v= ((m-1).*t1)
        for u= 1: t1
            q1(u+v)=1;
            end
        else  
            v= ((m-1)*t1)
            for  u= 1: t1
                q1(u+v)=0;
            end
        end;   
        if(r(m)==1) then
       v= ((m-1).*t1)
        for u= 1: t1
            r1(u+v)=1;
            end
        else  
            v= ((m-1)*t1)
            for  u= 1: t1
                r1(u+v)=0;
            end
        end;    
        if(s(m)==1) then
       v= ((m-1).*t1)
        for u= 1: t1
            s1(u+v)=1;
            end
        else  
            v= ((m-1)*t1)
            for  u= 1: t1
                s1(u+v)=0;
            end
        end;
        if(t(m)==1) then
       v= ((m-1).*t1)
        for u= 1: t1
            t11(u+v)=1;
            end
        else  
            v= ((m-1)*t1)
            for  u= 1: t1
                t11(u+v)=0;
            end
            end;     
       end; 
p=1;
while p<t1*5
     if p==1 | modulo(p,t1) == 1 then
        for k=1:t1/2
            cin(p+k)=0;
        end
         p=p+t1/2;
        else 
            cin(p)=1;
            p=p+1;
        end
end
y=[3 3];
subplot(6,1,1)  // making subplots to draw all graphs in a single window
title('Clock')
plot(cin)
plot(y)
subplot(6,1,2)
title('Serial input')
plot(se1)
plot(y)
subplot(6,1,3)
title('Q')
plot(q1)
plot(y)
subplot(6,1,4)
title('R')
plot(r1)
plot(y)
subplot(6,1,5)
title('S')
plot(s1)
plot(y)
subplot(6,1,6)
title('T')
plot(t11)
plot(y)