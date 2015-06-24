clc
disp("the soln of eg 3.2--> BPT & DPT Calc.");
z1=.5,P=101.325                                      //given data
a1=14.3916, b1=2795.32,c1=230.002,
a2=16.262,b2=3799.887,c2=226.346
x1=z1, x2=1-z1
T1sat=b1/(a1-log(P))-c1
T2sat=b2/(a2-log(P))-c2
Told=273,e=1
Tnew=x1*T1sat+x2*T2sat
while e>1e-6 do Told=Tnew,function y1=fw(Told),
        P1sat=exp(a1-b1/(Told+c1)),
        P2sat=exp(a2-b2/(Told+c2)),
        y1=P-x1*P1sat-x2*P2sat
        endfunction
        ydashd=derivative(fw,Told)
        Tnew=Told-fw(Told)/ydashd
        e=abs(Told-Tnew)
    end
    disp(Tnew,"the bubble point temp. in Celsius is");
                                                     //calc of dew point
y1=z1, y2=1-z1,e=1
Tnew=y1*T1sat+y2*T2sat
while e>1e-6 do Told=Tnew,function y11=fw1(Told),
         P1sat=exp(a1-b1/(Told+c1)),
         P2sat=exp(a2-b2/(Told+c2)),
        y11=1/P-y1/P1sat-y2/P2sat
        endfunction
        ydashd=derivative(fw1,Told)
        Tnew=Told-fw1(Told)/ydashd
        e=abs(Told-Tnew)
    end
    disp(Tnew,"the dew point temp. in Celsius is");