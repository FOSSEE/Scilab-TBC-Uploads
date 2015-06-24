clear
clc

ey=1/(.05 + %i*.15)
y=[
1 2 ey
1 5 ey
2 5 ey
2 3 ey
3 4 ey
4 5 ey
]
n=5
e=6

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
// bus no | PL | QL | PG | QG | V | th | btype | Qmin | Qmax

data = [
1 1 .5 %inf %inf 1.02 0 1 %inf %inf
2 0 0 2 %inf 1.02 0 2 .2 .6
3 .5 .2 0 0 1 0   3 %inf %inf
4 .5 .2 0 0 1 0   3 %inf %inf
5 .5 .2 0 0 1 0   3 %inf %inf

]
disp(Y, "(a)")
j = data(:,1);    // Bus number.
PL = data(:,2);
QL = data(:,3);
PG = data(:,4);
QG = data(:,5);
V = data(:,6); 
th = data(:,7);
btype = data(:,8);   // Type of Bus 1-Slack, 2-PV, 3-PQ.
Qmin = data(:,9);
Qmax = data(:,10);
n = max(j);
P = PG - PL;
Q = QG - QL

for i=1:n
    V(i,1)=V(i,1) * exp (%i * th(i,1)* %pi / 180)
end

Vprev = V;
toler = 1000;
iteration = 1;
while (iteration==1)
    for i = 2:n
        summ = 0;
        for k = 1:n
            if i ~= k
                summ = summ + Y(i,k)* V(k);
            end
        end
        if btype(i) == 2
            Q(i) = -imag(conj(V(i))*(summ + Y(i,i)*V(i)));
            if (Q(i) > Qmax(i)) | (Q(i) < Qmin(i))
                if Q(i) < Qmin(i)
                    Q(i) = Qmin(i);
                else    
                    Q(i) = Qmax(i);
                end
                btype(i) = 3;
            end
        end
        V(i) = (1/Y(i,i))*(((P(i)- %i*Q(i))/conj(V(i))) - summ);
        if btype(i) == 2 
            V(i) = abs(Vprev(i))*exp(%i * atan(imag(V(i))/real(V(i))));
        end
    end
    iteration = iteration + 1;
    toler = max(abs(abs(V) - abs(Vprev)));
    Vprev = V; 
end 
disp("(b)")
mprintf("\nV3 = %.2f ang(%.2f) deg", abs(V(3)),atand(imag(V(3))/real(V(3))))
mprintf("\nV4 = %.3f ang(%.2f) deg", abs(V(4)),atand(imag(V(4))/real(V(4))))
mprintf("\nV5 = %.4f ang(%.2f) deg", abs(V(5)),atand(imag(V(5))/real(V(5))))
mprintf("\ndelta 2 = %.2f deg",atand(imag(V(2,1))/real(V(2,1))))
mprintf("\nQ2 = %.4f ",Q(2,1))

