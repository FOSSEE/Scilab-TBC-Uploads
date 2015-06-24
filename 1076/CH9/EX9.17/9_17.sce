clear
clc

y=[
1 2 .026+%i*.11 %i*.04
2 3 .026+%i*.11 %i*.04
1 3 .026+%i*.11 %i*.04
]


n=3
e=3
Y=zeros(n,n)

for i=1:e
    ynew = 1/(y(i,3))
    y0=y(i,4)/2
    n1=real(y(i,1))
    n2=real(y(i,2))
    if(n1==0)
        Y(n2,n2)=Y(n2,n2)+ynew+y0
    else
        Y(n1,n1)= Y(n1,n1)+ynew+y0
        Y(n1,n2)= Y(n1,n2)-ynew
        Y(n2,n1)= Y(n2,n1)-ynew
        Y(n2,n2)= Y(n2,n2)+ynew+y0
    end
end
for i=1:n
    for j=1:n
        if i==j then
            Yb(i,j)= string(round(abs(Y(i,j))*1000)/1000) +'/_'+ string(round(atand(imag(Y(i,j))/real(Y(i,j)))*100)/100)
        else
            Yb(i,j)= string(round(abs(Y(i,j))*1000)/1000) +'/_'+ string(round((atand(imag(Y(i,j))/real(Y(i,j)))+180)*100)/100)
        end
    end
end
Y=round(Y*1e3)/1e3
disp(Yb,"(a)Ybus")
// bus no | PL | QL | PG | QG | V | th | btype 

data = [
1 %inf %inf 1 .5  1.03 0 1 
2 1.5 %inf  0 0 1.03 0 2 
3 0 0  1.2 .5  1 0   3 
]

j = data(:,1);    // Bus number.
PG = data(:,2);
QG = data(:,3);
PL = data(:,4);
QL = data(:,5);
V = data(:,6); 
th = data(:,7)* %pi / 180;
btype = data(:,8);   // Type of Bus 1-Slack, 2-PV, 3-PQ.
nbus = max(j);
P = PG - PL;
Q = QG - QL
Psp = P;
Qsp = Q;
G = real(Y);
B = imag(Y);
for i=1:nbus
    V(i,1)=V(i,1) * exp (%i * th(i,1))
end

pv = [2]        //whicih bus is PV
pq = [3]        //whicih bus is PQ
npv = length(pv);
npq = length(pq);

Tol = 1;  
Iter = 1;
while (Iter == 1)
    
    P = zeros(nbus,1);
    Q = zeros(nbus,1);

    for i = 1:nbus
        for k = 1:nbus
            P(i) = P(i) + V(i)* V(k)*(G(i,k)*cos(th(i)-th(k)) + B(i,k)*sin(th(i)-th(k)));
            Q(i) = Q(i) + V(i)* V(k)*(G(i,k)*sin(th(i)-th(k)) - B(i,k)*cos(th(i)-th(k)));
        end
    end

    dPa = Psp-P;
    dQa = Qsp-Q;
    k = 1;
    dQ = zeros(npq,1);
    for i = 1:nbus
        if btype(i) == 3
            dQ(k,1) = dQa(i);
            k = k+1;
        end
    end
    dP = dPa(2:nbus);
    M = [dP; dQ];

    H = zeros(nbus-1,nbus-1);
    for i = 1:(nbus-1)
        m = i+1;
        for k = 1:(nbus-1)
            n = k+1;
            if n == m
                for n = 1:nbus
                    H(i,k) = H(i,k) + V(m)* V(n)*(-G(m,n)*sin(th(m)-th(n)) + B(m,n)*cos(th(m)-th(n)));
                end
                H(i,k) = H(i,k) - V(m)^2*B(m,m);
            else
                H(i,k) = V(m)* V(n)*(G(m,n)*sin(th(m)-th(n)) - B(m,n)*cos(th(m)-th(n)));
            end
        end
    end
    
    N = zeros(nbus-1,npq);
    for i = 1:(nbus-1)
        m = i+1;
        for k = 1:npq
            n = pq(k);
            if n == m
                for n = 1:nbus
                    N(i,k) = N(i,k) + V(n)*(G(m,n)*cos(th(m)-th(n)) + B(m,n)*sin(th(m)-th(n)));
                end
                N(i,k) = N(i,k) + V(m)*G(m,m);
            else
                N(i,k) = V(m)*(G(m,n)*cos(th(m)-th(n)) + B(m,n)*sin(th(m)-th(n)));
            end
        end
    end
    
    J3 = zeros(npq,nbus-1);
    for i = 1:npq
        m = pq(i);
        for k = 1:(nbus-1)
            n = k+1;
            if n == m
                for n = 1:nbus
                    J3(i,k) = J3(i,k) + V(m)* V(n)*(G(m,n)*cos(th(m)-th(n)) + B(m,n)*sin(th(m)-th(n)));
                end
                J3(i,k) = J3(i,k) - V(m)^2*G(m,m);
            else
                J3(i,k) = V(m)* V(n)*(-G(m,n)*cos(th(m)-th(n)) - B(m,n)*sin(th(m)-th(n)));
            end
        end
    end
    
    L = zeros(npq,npq);
    for i = 1:npq
        m = pq(i);
        for k = 1:npq
            n = pq(k);
            if n == m
                for n = 1:nbus
                    L(i,k) = L(i,k) + V(n)*(G(m,n)*sin(th(m)-th(n)) - B(m,n)*cos(th(m)-th(n)));
                end
                L(i,k) = L(i,k) - V(m)*B(m,m);
            else
                L(i,k) = V(m)*(G(m,n)*sin(th(m)-th(n)) - B(m,n)*cos(th(m)-th(n)));
            end
        end
    end
    
    J = [H N; J3 L];
    
    X = inv(J)*M;
    dTh = X(1:npq+npv);
    dV = X(nbus:nbus+npq-1);
    

    th(2:nbus) = dTh + th(2:nbus);
    k = 1;
    for i = 2:nbus
        if btype(i) == 3
            V(i) = dV(k) + V(i);
            k = k+1;
        end
    end
    
    Iter = Iter + 1;
    Tol = max(abs(M));
    
end
mprintf("\n\n(b)P2= %.3f, P2= %.3f, P3= %.3f, Q3= %.3f", P(2),Q(2) ,P(3), Q(3))
J=fix(J*1e3)/1e3
disp(J, "(c)J")

mprintf("\n(d)\n")
mprintf("%.3f = %.3f dd2 + %.3f dd3 +%.3f dV3/|V3|\n", dP(1), J(1,1), J(1,2), J(1,3) )
mprintf("%.3f = %.3f dd2 + %.3f dd3 +%.3f dV3/|V3|\n", dP(2), J(2,1), J(2,2), J(2,3) )
mprintf("%.3f = %.3f dd2 + %.3f dd3 +%.3f dV3/|V3|\n", dQ(1), J(3,1), J(3,2), J(3,3) )
