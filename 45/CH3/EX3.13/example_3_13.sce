//example 3.1 
clc;
clear;
a=[0 0 0 0 1 1 1 1;0 0 1 1 0 0 1 1;0 1 0 1 0 1 0 1]; //from the truth table given
y=[0 0 1 0 0 0 1 1];
j=1;
for i=1:8 // finding for which input conditions the output is high
    if y(i) == 1 then
        x(j,:)= [a(1,i) a(2,i) a(3,i)];
        j=j+1;
    end
end
for i=1:j-1;  // finding the first stage 
    f(i)=0;
    c=0;
   for m=3:-1:1
    f(i) = f(i) + x(i,m)*(2^c);
    c=c+1;
end    
end
disp('stage 1'); //displaying first stage 
x(:,4)=f;
disp('    A    B     C');
disp(x)
count=zeros(j-2,j-2)
pos=count;
for i=1:j-2 // for second stage comparing with each other  
    for k=1:j-i-1
    for m=1:3
    if x(i,m)==x(i+k,m)  then
    count(i,k)=count(i,k)+1;
    else
    pos(i,k)=m
    end
    end
end
end
r=1;
for i=1:j-2  //making a list of second stage elements 
    for m=1:j-2
    if count(i,m)==2 then
    posi(r) = pos(i,m);  
    sest(r,1) = x(i,4);
    sest(r,2) = x(i+m,4); 
    r=r+1;
    end
    end
end
disp('stage 2'); //displaying second stage 
disp(sest);
o=size(sest);  
fin(1)=sest(1,1);
fin(2)=sest(1,2);
p=3;
for i=2:o(1,1) //removing redundancy in second stage 
    t=0;
    ts=0;
    for w=1:p-1
    if fin(w)== sest(i,1) then
    t=30;
    end;
    if fin(w) == sest(i,2) then
    ts=40;
    end
    end
    if t==0 then
    fin(p)=sest(i,1);
    finn(p-2)=i;
    p=p+1;
    end
    if ts==0 then
    fin(p)=sest(i,2)
    finn(p-2)=i;
    p=p+1;
    end
end
ppp=size(finn) //selecting the prime implicants 
l=1
fina(l)= finn(l); 
for i=2:ppp(1,1)
    q=0;
    for b=1:l
    if fina(b) == finn(i) then
    q=89 ;
    end
    end
    if q==0 then
    fina(l+1)=finn(i);
    l=l+1;
    q=0;
    end
end
kkk=size(fina);
i=1;
jj=0;
bi(1)=' ';
x(i)
po=1;
for k=1:kkk(1,1)+1
for p=1:3    //appending a string to make the expression 
    if p ~= posi(i)  then
    if p == 1 & x(i,p)==1   then
    bi(po)=strcat([bi(po) 'A']);
    elseif p== 1 &x(i,p)==0 then
    bi(po)=strcat([bi(po) 'A''']);
    end
    if p == 2 & x(i,p)==1   then
    bi(po)=strcat([bi(po) 'B']);
    elseif p== 2 &x(i,p)==0 then
    bi(po)=strcat([bi(po) 'B''']);
    end
    if p == 3 & x(i,p)==1   then
    bi(po)=strcat([bi(po) 'C']);
    elseif p== 3 &x(i,p)==0 then
    bi(po)=strcat([bi(po) 'C''']);
    end
    end
end
jj=jj+1;
if jj<=kkk(1,1) then
i=fina(jj);
bi(po)=strcat([bi(po) ' + ']);
end
end;
disp('The minimised expression is ');
disp(bi);