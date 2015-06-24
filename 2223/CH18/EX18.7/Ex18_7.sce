// scilab Code Exa 18.7 RHF of a three stage turbine

p1=1.0; // Initial Pressure in bar
gamma=1.4;
T1=1500;  // Initial Temperature in K
s=3; // number of stages
opr=11; // Overall Pressure Ratio
pr=opr^(1/s); // equal Pressure Ratio in each stage
n_T=0.88; // Overall Efficiency 
delTa=T1*(1-opr^(-((gamma-1)/gamma)))*n_T;
T2=T1-delTa;
n_p=(log(T1/T2))/(((gamma-1)/gamma)*(log(opr))); // polytropic or small stage efficiency
cp=1.005; // Specific Heat at Constant Pressure in kJ/(kgK)
n_st=(1-pr^(n_p*(-((gamma-1)/gamma))))/(1-pr^(-((gamma-1)/gamma))); // stage efficiency
T(1)=T1;
for i=1:3
    delT(i)=T(i)*(1-pr^(n_p*(-((gamma-1)/gamma))));
    delw_s(i)=delT(i)*cp/n_st;
    T(i+1)=T(i)-delT(i);
end
w_a=cp*delTa;
w_s=w_a/n_T;
RHF=(delw_s(1)+delw_s(2)+delw_s(3))/w_s;
disp(RHF,"the reheat factor is")

