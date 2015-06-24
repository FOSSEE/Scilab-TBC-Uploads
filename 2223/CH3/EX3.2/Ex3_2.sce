// scilab Code Exa 3.2 Gas Turbine Plant with an exhaust HE
T1=300;  // Minimum  cycle Temperature in Kelvin
funcprot(0);
pr=10; // pressure ratio of the turbine and compressor
T3=1500;  // Maximum cycle Temperature in Kelvin
m=10; // mass flow rate through the turbine and compressor in kg/s
e(1)=0.8; // thermal ratio of the heat exchanger
e(2)=1;
n_c=0.82; // Compressor Efficiency
n_t=0.85; // Turbine Efficiency
gamma=1.4; // Specific Heat Ratio
cp=1.005; // Specific Heat at Constant Pressure in kJ/(kgK)
beeta=T3/T1;
T2s=T1*(pr^((gamma-1)/gamma));
T2=T1+((T2s-T1)/n_c);
T4s=T3*(pr^(-((gamma-1)/gamma)));
T4=T3-((T3-T4s)*n_t);

for i=1:2
T5=T2+e(i)*(T4-T2);
T6=T4-(T5-T2);
Q_s=cp*(T3-T5);
Q_r=cp*(T6-T1);
// part(a) Determining power developed
w_p=Q_s-Q_r;
P=m*w_p;
printf("for effectiveness=%f, \n (a)the power developed is %f kW",e(i),P)

// part(b) Determining thermal efficiency of the plant
n_th=1-(Q_r/Q_s);
disp ("%",n_th*100,"(b)thermal efficiency of the plant is")    
end

// part(c) Determining efficiencies of the ideal Joules cycle
n_Joule=1-(pr^((gamma-1)/gamma)/beeta);
disp("%",n_Joule*100,"(c)efficiency of the ideal Joules cycle with perfect heat exchange is")
n_Carnot=1-(T1/T3);
disp("%",n_Carnot*100,"and the Carnot cycle efficiency is")
