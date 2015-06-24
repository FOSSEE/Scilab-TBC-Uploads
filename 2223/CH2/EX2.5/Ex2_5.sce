// scilab Code Exa 2.5 Calculation on three stage gas turbine

p1=1.0; // Initial Pressure in bar
gamma=1.4;
T1=1500;  // Initial Temperature in K
s=3; // number of stages
opr=11; // Overall Pressure Ratio

// part(a)Determining pressure ratio of each stage
pr=opr^(1/s); // equal Pressure Ratio in each stage
disp (pr,"(a)Pressure ratio of each stage is")

// part(b)Determining the polytropic or small stage efficiency
n_o=0.88; // Overall Efficiency 
delT=T1*(1-opr^(-((gamma-1)/gamma)))*n_o;
T2=T1-delT;
n_p=(log(T1/T2))/(((gamma-1)/gamma)*(log(opr)));
disp ("%",n_p*100,"(b)small stage Efficiency or polytropic efficiency of the turbine is")

// part(c) Determining mass flow rate
P=30000; // Power output of the Turbine in kW
n_d=0.91; // Overall efficiency of the drive
cp=1.005; // Specific Heat at Constant Pressure in kJ/(kgK)
m=P/(cp*delT*n_d);
disp ("kg/s",m,"(c)mass flow rate is")

// part(d) Determining efficiency of each stage
n_st=(1-pr^(n_p*(-((gamma-1)/gamma))))/(1-pr^(-((gamma-1)/gamma)));
disp ("%",n_st*100,"(d)Efficiency of each stage is")
d=3;
T(1)=T1;
for i=1:d
    delT(i)=T(i)*(1-pr^(n_p*(-((gamma-1)/gamma))));
    T(i+1)=T(i)-delT(i);
    P(i)=m*cp*delT(i);
printf("\n P(%d)=%f MW",i,P(i)*1e-3)
end
