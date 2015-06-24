clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 11.5
//Caption : Program to Plot the Fugacity and Fugacity Coefficient Vs P

//Using Eqn 11.30

//G=t(T)+RT ln f
//G`=t(T)+rt ln f`

//Hence ln(f/f`) = (1/RT)*(G-G`)

//G=H-TS
//G`=H-TS`

//ln (f/f`)=(n/R)*(((H-H`)/T)-(S-S`))   (A)

R=8.314;
n=18.015;
f_=1;//[kPa]
P_=f_;
H_=3076.8;//[J/g]
S_=10.3450;//[J/g/K]
T=573.15;//[K]
P=[10 50 100 200 500 1000 1500 2000 2500 3000 3500 4000 4500 5000 5500 6000 6500 7000 7600 8000 8400];
H=[3076.6 3075.7 3074.2 3072.1 3064.8 3052.1 3038.9 3025 3010.4 2995.1 2979 2962 2944.2 2925.5 2905.8 2885 2862.9 2839.4 2808.8 2786.8 2763.1]; 
S=[9.282 8.5380 8.2166 7.8937 7.4614 7.1251 6.9207 6.7696 6.6470 6.5422 6.4491 6.3642 6.2852 6.2105 6.1388 6.0692 6.0008 5.9327 5.8503 5.7942 5.7366];

K=approx(exp((n/R).*(((H-H_)/T)-(S-S_))),0);

f=K*f_;
P(22)=8592.7;//[kPa]
P_sat=P(22)
f(22)=6738.9;
f_sat=f(22)

si=approx(f./P,4);
si_sat=si(22)

Vl=approx(1.403*n,2)//[cm^3/mol]
//Using Eqn 11.41
P_new=linspace(8592.7,10000,10);
f_new=approx(f_sat.*exp(Vl.*(P_new-P_sat)/(R*1000*T)),1);
si_new=f_new./P_new;
subplot(1,2,1)
plot(P/1000,f/1000,'b')
plot(P_new/1000,f_new/1000,'g')
dotsx=[0 P_sat/1000];
dotsy=[f_sat/1000 f_sat/1000];
plot(dotsx,dotsy,'b--')
dotsx=[0 f_sat/1000];
dotsy=[P_sat/1000 P_sat/1000];
plot(dotsy,dotsx,'g--')
dotsx=[11,8];
dotsx=[6,6];
plot(dotsx,dotsy,'w')
legend('f vs P(till P_sat)','f vs P(Beyond P_sat)','f_sat','P_sat')
xtitle('f vs P','P X 10^-3 /kPa','f X 10^-3 /kPa')
subplot(1,2,2)
plot(P/1000,si,'r')
plot(P_new/1000,si_new,'g')
dotsx=[0 P_sat/1000];
dotsy=[si_sat si_sat];
plot(dotsx,dotsy,'g--')
dotsx=[0.55 si_sat];
dotsy=[P_sat/1000 P_sat/1000];
plot(dotsy,dotsx,'r--')

legend('si vs P(till P_sat)','si vs P(Beyond P_sat)','si_sat','P_sat')
xtitle('si vs P','P X 10^-3 /kPa','si')

//End