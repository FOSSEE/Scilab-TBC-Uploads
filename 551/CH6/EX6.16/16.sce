clc
T0=293; //K
T1=293; //K
T2=373; //K
T3=323; //K
cp=1.005;

disp("(i) The ratio of mass flow")
//cp=Specific heat of air constant pressure
//cp*T1 + x*cp*T2 = (1+x)*cp*T3
x=(T3-T1)/(T2-T3);
disp("x=")
disp(x)


disp("(ii) The effectiveness of heating process")
ds_13=cp*log(T3/T1);
ds_32=cp*log(T2/T3);
A=cp*(T3-T1) - T1*ds_13; //Increase of availability of system
B=x*[cp*(T2-T3)-T0*(ds_32)];// Loss of availability of surroundings

Effectiveness=A/B;
disp("Effectiveness of heating process=")
disp(Effectiveness)