clear all; clc;

disp("The inlet specific volume is calculated from the ideal gas equation")
R=53.3
T1=580
p1=65
nu1=(R*T1)/(144*p1)
printf(" nu1=%0.3f ft^3/lbm=",nu1)

disp("Q1=m*v1=4594 cfm")

R=53.3
T1=580
//let y=(n/(n-1))
y=2.625
p2=250
p1=65
H_oa=R*T1*(y)*[(p2/p1)^(1/y)-1]
printf(" The overall adiabetic head is calculated as H_o/a= %0.0f ft-lbf/lbm",H_oa)

y=(0.75*1.4)/(1.4-1)
printf("\n Where n/(n-1)=(Eta_p*k)/(k-1)=%0.3f",y)

disp("From figure 6.7 , a centrifugal compressor with speed N=10000rpm is appropriate for the present application")

disp("To use figure 6.7,the specific speed can be calculated from Ns=N*(V1^0.5)/(H_ad^0.75)")
V1=4954/60
printf(" Where V1= %0.1f cfs",V1)
disp("H_ad=(H_o/a)/Eta_s is the head for each stage .")
disp("Selecting the number of stages to be 2,4, and 6,the head for each stage and specific speed  can be calculated,then the total-to=total adiabetic efficiencies can be read ")
disp("The required shaft horse power can be calculated with the volumetric and mechanical efficiencies assumed to be 0.98 and 0.95 respectively")
disp("That is Ps=(m*(H_o/a)/(33000*Eta_ad*Eta_v*Eta_m)")

H_oa=54417
V1=82.6
Eta_v=0.98
Eta_m=0.95
N=10000

StageNo=[2 4 6];
Eta_ad=[0.72 0.83 0.87];


H_ad= zeros(1,length(StageNo));
Ns = zeros(1,length(StageNo));
Ps = zeros(1,length(StageNo));

for i = 1: length(StageNo)
   

    H_ad(i) =H_oa/(StageNo(i));
    Ns(i) =N*(V1^0.5)/(H_ad(i)^0.75);
    Ps(i) = (m*H_oa)/(33000*Eta_ad(i)*Eta_v*Eta_m);
end

disp("StageNo   H_ad          Ns       Eta_ad      Ps")
disp("       (ft-lbf/lbm)                         (hp)")
table = [StageNo' H_ad' Ns' Eta_ad' Ps'];
disp(table)


































