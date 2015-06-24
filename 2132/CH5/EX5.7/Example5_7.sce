//Example 5.7
clc;
clear;
close;
format('v',8);
//Given data :
Z1=0;//meter
Z2=5;//meter
Q=300*10^-3;//m/s
D1=0.3;//meter
D2=0.6;//meter
A1=%pi*D1^2/4;//m^2
A2=%pi*D2^2/4;//m^2
v1=Q/A1;//m/s
v2=Q/A2;//m/s
p1=100;//kN/m^2
p2=600;//kN/m^2
g=9.81;//constant
Vhead11=v1^2/2/g;//meter
Vhead22=v2^2/2/g;//meter
Phead11=p1/g;//meter
Phead22=p2/g;//meter
E1_11=Z1+Vhead11+Phead11;//meter
E2_22=Z2+Vhead22+Phead22;//meter
if E1_11>E2_22 then
    disp("Energy at section 1-1("+string(E1_11)+" meter) is greater than energy at section 2-2("+string(E2_22)+" meter). Flow of water is from section 1-1 to 2-2.");
    HeadLoss=E1_11-E2_22;//meter
    disp(HeadLoss,"Head Loss in meter : ");
else
        disp("Energy at section 2-2("+string(E2_22)+" meter) is greater than energy at section 1-1("+string(E1_11)+" meter). Flow of water is from section 2-2 to 1-1.");  
            HeadLoss=E2_22-E1_11;//meter
        disp(HeadLoss,"Head Loss in meter : ");
end

