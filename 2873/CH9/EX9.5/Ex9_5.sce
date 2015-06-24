// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 9 Example 5")
P1=1*10^5;//initial pressure in Pa
P4=P1;//constant pressure process
T1=300;//initial temperature in K
P2=6.2*10^5;//pressure after compression in Pa
P3=P2;//constant pressure process
k=0.017;//fuel to air ratio
n_compr=0.88;//compressor efficiency
q=44186;//heating value of fuel in KJ/kg
n_turb=0.9;//turbine internal efficiency
Cp_comb=1.147;//specific heat of combustion at constant pressure in KJ/kg K
Cp_air=1.005;//specific heat of air at constant pressure in KJ/kg K
y=1.4;//expansion constant
n=1.33;//expansion constant for polytropic constant
disp("gas turbine cycle is shown by 1-2-3-4 on T-S diagram,")
disp("for process 1-2 being isentropic,")
disp("T2/T1=(P2/P1)^((y-1)/y)")
disp("so T2=T1*(P2/P1)^((y-1)/y) in K")
T2=T1*(P2/P1)^((y-1)/y)
disp("considering compressor efficiency,n_compr=(T2-T1)/(T2_a-T1)")
disp("so T2_a=T1+((T2-T1)/n_compr)in K")
T2_a=T1+((T2-T1)/n_compr)
disp("during process 2-3 due to combustion of unit mass of compressed the energy balance shall be as under,")
disp("heat added=mf*q")
disp("=((ma+mf)*Cp_comb*T3)-(ma*Cp_air*T2)")
disp("or (mf/ma)*q=((1+(mf/ma))*Cp_comb*T3)-(Cp_air*T2_a)")
disp("so T3=((mf/ma)*q+(Cp_air*T2_a))/((1+(mf/ma))*Cp_comb)in K")
T3=((k)*q+(Cp_air*T2_a))/((1+(k))*Cp_comb)
disp("for expansion 3-4 being")
disp("T4/T3=(P4/P3)^((n-1)/n)")
disp("so T4=T3*(P4/P3)^((n-1)/n) in K")
T4=T3*(P4/P3)^((n-1)/n)
disp("actaul temperature at turbine inlet considering internal efficiency of turbine,")
disp("n_turb=(T3-T4_a)/(T3-T4)")
disp("so T4_a=T3-(n_turb*(T3-T4)) in K")
T4_a=T3-(n_turb*(T3-T4))
disp("compressor work,per kg of air compressed(Wc)=Cp_air*(T2_a-T1) in KJ/kg of air")
Wc=Cp_air*(T2_a-T1)
disp("so compressor work=234.42 KJ/kg of air")
disp("turbine work,per kg of air compressed(Wt)=Cp_comb*(T3-T4_a) in KJ/kg of air")
Wt=Cp_comb*(T3-T4_a)
disp("so turbine work=414.71 KJ/kg of air")
disp("net work(W_net)=Wt-Wc in KJ/kg of air")
W_net=Wt-Wc
disp("heat supplied(Q)=k*q in KJ/kg of air")
Q=k*q
disp("thermal efficiency(n)=W_net/Q")
n=W_net/Q
disp("in percentage")
n=n*100
disp("so thermal efficiency=24%")
