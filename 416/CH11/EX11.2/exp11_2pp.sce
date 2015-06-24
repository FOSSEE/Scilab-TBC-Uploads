clc
clear
disp("example 11.2")
//given
l1=700;t1=14;l2=500;t2=10
ac=24;bc=0.02//variables of cost equation
aw=6;bw=0.0025 //variables of watere quantity equation
b22=0.0005 //loss coefficient
r2=2.5
lam=1:0.001:40
gg=1;q=1
for lam=25:0.001:40
    a=[2*bc 0;0 r2*bw*2+2*b22*lam]
    b=[lam-ac;lam-aw*r2]
    p=inv(a)*b
    g=round(p(1)+p(2))
    l=round(l1+b22*p(2)^2)
    lq=round(l2+b22*p(2)^2)
    if g>=l then
        printf("\nfor load condition %dMW \n then, \n \t lamda %f \t p1=%fMW \n \t p2=%fMW \t pl=%fMW",l1,lam,p(1),p(2),2*b22*p(2))
        break
    end
end
for lam=25:0.001:40
    a=[2*bc 0;0 r2*bw*2+2*b22*lam]
    b=[lam-ac;lam-aw*r2]
    pq=inv(a)*b
    g=round(pq(1)+pq(2))
    lq=round(l2+b22*pq(2)^2)

    if g>=lq then
        printf("\nfor load condition %dMW \n then, \n \t lamda %f \t p1=%fMW \n \t p2=%fMW \t pl=%fMW",l2,lam,pq(1),pq(2),2*b22*pq(2))
        break
    end
end
dwu=[(aw+bw*p(2))*p(2)*t1+t2*(aw+bw*pq(2))*pq(2)]*3600
doc=[(ac+bc*p(1))*p(1)*t1+(ac+bc*pq(1))*pq(1)*t2]
printf("\ndaily water used %fm^3 \ndaily operating cost of thermal plant Rs%f",dwu,doc)
