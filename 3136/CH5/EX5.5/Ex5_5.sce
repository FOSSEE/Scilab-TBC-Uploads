clear all; clc;

disp("Since the pressure changes are small compared with the barometric pressure,constant densities are assumed that is rho3 =rho2=rhoa where rhoa=pa/(RTa)")
p_a=14.6
T_a=535
R=53.3
rho_a=(p_a*144)/(R*T_a)//144 is the conversion factor
printf("rhoa= %0.4f lbm/ft^3",rho_a)

A2=5*6.5
printf("\nA2 equals %g in^2",A2)
disp("On converting A2=0.225ft^2")

A3=%pi*6.065^2/4
printf("\nA3 equals %0.1f in^2",A3)
disp("On converting A3=0.2007ft^2")

disp("From (rho3*V3^2)/2=rhow*g*pv3,V3 can be calculated")
rho_w=62.4
g=32.2
rho_3=0.0737
j=sqrt(2*rho_w*g/(rho_3*12))
printf("V3=%0.1f * pv3^0.5 ft/s",j)

disp("The inlet flow rate can be calculated as Q=Q3=V3*A3=0.2007*60*V3=12.04*V3")
disp("Also the dynamic pressure can be calculated as pv2=pv3*((A3/A2)^2)*(rho3/rho2)=(0.2/0.225)^2*pv3=0.79pv3")

disp("The total pressure pt2=ps2+pv2")
disp("To correct these data to a fixed speed of 3500rpm,the fan laws can be used as Qdash=Q*3500/N,pt2dash=pt2*((3500/N)^2) and Hdash=H*((3500/N)^3).")
disp("The total efficiency can be calculated as ETAt=(rhow*g*pt2dash*Qdash)/(Hdash)")
disp("On simplifying ETAt=Qdash*pt2dash/(6346*Hdash)")

p_v3=[2.4 2.1 1.9 1.5 1.2 0.8 0.4];
p_s2=[2.5 4.2 6.0 6.8 7.6 8.5 9.5];
N=[3450 3520 3500 3420 3430 3500 3520];
H=[1.1 1.25 1.49 1.55 1.67 1.72 1.81];

V_3=zeros(1,length(p_v3));
Q=zeros(1,length(p_v3));
p_v2=zeros(1,length(p_v3));
p_t2=zeros(1,length(p_v3));
Qdash=zeros(1,length(p_v3));
tenpt2dash=zeros(1,length(p_v3));
tenHdash=zeros(1,length(p_v3));
eta_t=zeros(1,length(p_v3));

for i = 1: length(p_v3)
   

    V_3(i) = 67.4*sqrt(p_v3(i));
    Q(i) = 12.04*V_3(i);
    p_v2(i) =0.79*p_v3(i);
    p_t2(i)= p_s2(i)+p_v2(i);
    Qdash(i)= Q(i)*(3500/(N(i)));
    tenpt2dash(i)= 10*p_t2(i)*((3500/N(i))^2);
    tenHdash(i)= 10*H(i)*((3500/(N(i)))^3);
    eta_t(i)= ((Qdash(i)*(tenpt2dash(i))/10)/(6346*(tenHdash(i))/10))*100;
end

disp("The table is in the order given in the book,that is pv3, ps2, N, H, V3, Q, pv2, pt2, Qdash, tenpt2dash, tenHdash and etat.")
table=[p_v3'  p_s2'  N'  H'  V_3'  Q'  p_v2'  p_t2'  Qdash'  tenpt2dash'  tenHdash'  eta_t'  ];
disp(table)

plot(Q,tenpt2dash,'o',Q,tenHdash,'d',Q,eta_t,'s')
legend("tenpt2dash (inches of water)","tenHdash (hp)","eta_t (%)",-1)
xlabel("Q(cfm)")
ylabel("tenpt2dash (inches of water), tenHdash (hp) , eta_t (%)")
set(gca(),"grid",[1 1])



















