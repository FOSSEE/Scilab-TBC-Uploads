clear
clc

y=[
1 2 %i*.11 
2 3 %i*.11 
1 3 %i*.11 
]


n=3
e=3
Y=zeros(n,n)

for i=1:e
    ynew = 1/(y(i,3))
    n1=real(y(i,1))
    n2=real(y(i,2))
    if(n1==0)
        Y(n2,n2)=Y(n2,n2)+ynew
    else
        Y(n1,n1)= Y(n1,n1)+ynew
        Y(n1,n2)= Y(n1,n2)-ynew
        Y(n2,n1)= Y(n2,n1)-ynew
        Y(n2,n2)= Y(n2,n2)+ynew
    end
end
Y=round(Y*1e3)/1e3
disp(Y,"(a)Ybus")
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
            V(i) = -dV(k) + V(i);
            k = k+1;
        end
    end
    
    Iter = Iter + 1;
    Tol = max(abs(M));
    
end

V=round(V*10000)/10000
th=round(th*1e5)/1e5

mprintf("\n(b)P2=%.0f P3=%.0f Q3=%.3f \n", P(2), P(3), Q(3))
disp(-imag(Y(2:3,2:3)), "(c)B''")
disp(-imag(Y(3,3)), "B''''")

P = zeros(nbus,1);
Q = zeros(nbus,1);

for i = 1:nbus
    for k = 1:nbus
        P(i) = P(i) + real(V(i)* V(k)*Y(i,k)* exp(%i * (th(k)-th(i))))
        Q(i) = Q(i) - imag(V(i)* V(k)*Y(i,k)* exp(%i * (th(k)-th(i))))
    end
end
//"please note: there is an error in the book in calculation of Q3=-.0497 (part(e)) during value substitution in formula vi. The variation in results is due to the same error, verified seperately on calculator"
mprintf("\n\n(e)P2= %.3f, P3= %.3f, Q3= %.3f", P(2), P(3), Q(3))

Q(3)=-.49
Pl=P(1)+P(2)+P(3)
Ql=Q(1)+Q(2)+Q(3)


mprintf("\n\n(f)real line losses= %.1f, reactive line losses= %.1f", Pl, Ql)


data(1,2)=PL(1)+P(1);
data(1,3)=QL(1)+Q(1);
data(2,3)=QL(2)+Q(2);


mprintf("\n\n(g)PG1= %.1f,QG1= %.2f, PG2= %.1f,QG2= %.2f\n\n", data(1,2), data(1,3),data(2,2), data(2,3))

disp("please note: there is an error in the book in calculation of Q3=-.0497 (part(e)) during value substitution in formula vi. The variation in results is due to the same error, verified seperately on calculator")
