// To calculate primary and scondary side impedences,current and their pf and real power
// and calculate terminal voltage

clc;
N_1=150;
N_2=75;

a=N_1/N_2;

Z_2=[5,30];                //polar(magnitude,phase diff)
disp(Z_2,'secondary impedence(ohm)');
Z_1=[a^2*Z_2(1),Z_2(2)];
disp(Z_1,'primary impedence(ohm)');

V_1=[200,0];                //polar(magnitde,phase diff)
V_2=[V_1(1)/a,V_1(2)];
disp(V_2,'secondary terminal voltage(V)');

I_2(1)=V_2(1)/Z_2(1);
I_2(2)=V_2(2)-Z_2(2);
disp(I_2,'I_2=');
pf=cosd(I_2(2));
disp(pf,'pf lagging=');

I_1(1)=I_2(1)/a;
I_1(2)=I_2(2);
disp(I_1,'I_1(A)');
pf=cosd(I_1(2));
disp(pf,'pf lagging=');

P_2=V_2(1)*I_2(1)*cosd(I_2(2));   
disp(P_2,'secondary power output(W)=');
//P_1=primary power output
P_1=P_2                            //as the transormer is lossless
disp(P_1,'primary power output(W)=');
