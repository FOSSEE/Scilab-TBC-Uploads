//Example 18.8
//ADI Method
//Page no. 642
clc;clear;close;

for i=1:4
    for j=1:5
        P(i,j)=20
    end
end
r=1;k=0;
for i=1:6
    v1(i)=20
    u1(i)=20
end
P1=[25,30,35,50,60;35,0,0,0,70;45,0,0,0,80;60,70,80,100,90]
for i=1:4
    printf('\n')
    for j=1:5
        printf('%i\t',P(i,j))
    end
    if i==2 then
        printf('-->')
    end
    printf('\t')
    for j=1:5
        printf('%i\t',P1(i,j))
        if i>1 & i<4 & j>1 & j<5 then
            P1(i,j)=P(i,j)
        end
    end
end
P1v=P1;P1h=P1;
for i=1:6
    for j=1:6
        if i==j then
            Av(i,j)=1+2*r
        elseif abs(i-j)==1 & i+j~=5 & i+j~=9
            Av(i,j)=-r
        end
    end
end
for i=1:6
    for j=1:6
        if i==j then
            Ah(i,j)=1+2*r
        elseif abs(i-j)==1 & i+j~=7
            Ah(i,j)=-r
        end
    end
end
n=8
for l=1:n
    k=0;
for j=0:2
    for i=1:2
        if i==1 then
            Bv(i+j+k)=r*P1h(i+1,j+1)+(1-2*r)*P1h(i+1,j+2)+r*P1h(i+1,j+3)+r*P1h(i,j+1)
        else
            Bv(i+j+k)=r*P1h(i+1,j+1)+(1-2*r)*P1h(i+1,j+2)+r*P1h(i+1,j+3)+r*P1h(i+2,j+1)
        end
    end
    k=k+1;
end
k=0;
Bh=[r*30+(1-2*r)*v1(1)+r*v1(4)+r*35;r*35+(1-2*r)*v1(3)+r*v1(5);r*v1(1)+(1-2*r)*v1(2)+r*v1(3)+r*(70);r*v1(1)+(1-2*r)*v1(2)+r*(70+45);r*v1(3)+(1-2*r)*v1(4)+r*80;r*v1(5)+(1-2*r)*v1(6)+r*(100+80)]
     for i=1:6
         v(i,l)=v1(i)
     end
     for i=1:6
         u(i,l)=u1(i)
     end
     v1=inv(Av)*Bv
     u1=inv(Ah)*Bh
     k=1;
     for i=2:3
         for j=2:4
             P1h(i,j)=u1(i+j+k-4)
         end
         k=k+2
     end
     k=0;
     for j=2:4
         for i=2:3
             P1v(i,j)=v1(i+j+k-3)
         end
         k=k+1
     end
end
printf('\n\n\n\nResults for Vertical Transverse in Celsius :\n')
for i=1:7
    printf('\n')
    if i==1 then
        printf('Itr -->')
        for j=1:n
        printf('\t  %i',j-1)
    end
    printf('\n----------------------------------------------------------------------')
    else
        printf(' v%i',i-1)
        for j=1:n
        printf('\t%.2f',v(i-1,j))
        end
    end
end
printf('\n\n\n\nResults for Horizontal Transverse in Celsius :\n')
for i=1:7
    printf('\n')
    if i==1 then
        printf('Itr -->')
        for j=1:n
        printf('\t  %i',j-1)
    end
    printf('\n----------------------------------------------------------------------')
    else
        printf(' u%i',i-1)
        for j=1:n
        printf('\t%.2f',u(i-1,j))
        end
    end
end