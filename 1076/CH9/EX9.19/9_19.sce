clear
clc

y=[
1 2 2-%i*8
1 3 1-%i*4
2 3 .666-%i*2.664
2 4 1-%i*4
3 4 2-%i*8
]
n=max(real(y(:,1:2)))
e=5

Y=zeros(n,n)

for i=1:e
    n1=real(y(i,1))
    n2=real(y(i,2))
    ynew=y(i,3)
    if(n1==0)
        Y(n2,n2)=Y(n2,n2)+ynew
    else
        Y(n1,n1)= Y(n1,n1)+ynew
        Y(n1,n2)= Y(n1,n2)-ynew
        Y(n2,n1)= Y(n2,n1)-ynew
        Y(n2,n2)= Y(n2,n2)+ynew
    end
end

disp(Y,"Ybus")
// bus no | P | Q | V | th | btype 

data = [
1 %inf %inf 1.06 0 1
2 .5 .2 1 0   3
3 .4 .3 1 0   3 
4 .3 .1 1 0   3 
]

j = data(:,1);    // Bus number.
P = data(:,2);
Q = data(:,3);
V = data(:,4); 
th = data(:,5);
btype = data(:,6);   // Type of Bus 1-Slack, 2-PV, 3-PQ.
n = max(j);

a=1.6

for i=1:n
    V(i,1)=V(i,1) * exp (%i * th(i,1)* %pi / 180)
end

Vprev = V;
toler = 1000;
iteration = 1;
disp("(b)")
while (iteration==1)
    for i = 2:n
        summ = 0;
        for k = 1:n
            if i ~= k
                summ = summ + Y(i,k)* V(k);
            end
        end
        V(i) = (1/Y(i,i))*(((P(i)- %i*Q(i))/conj(V(i))) - summ);
        dv=V(i)-Vprev(i)
        mprintf("\nV%d = %.3f ang(%.2f) deg", i,abs(V(i)),atand(imag(V(i))/real(V(i))))
        V(i)=Vprev(i)+(a*dv)
        if btype(i) == 2 
            V(i) = abs(Vprev(i))*exp(%i * atan(imag(V(i))/real(V(i))));
        end
    end
    iteration = iteration + 1;
    toler = max(abs(abs(V) - abs(Vprev)));
    Vprev = V; 
end 
