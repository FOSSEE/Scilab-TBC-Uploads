//Calculations on closed cycle gas turbine
clc,clear
//Given:
r_p=9 //Overall pressure ratio
eta_LPC=85,eta_HPC=85 //Isentropic efficiency of L.P. and H.P. compressors in percent
eta_LPT=90,eta_HPT=90 //Isentropic efficiency of L.P. and H.P. turbine in percent
T1=300,T5=1100 //Inlet temperature to turbine and compressor in K
cp_ar=0.5207 //Specific heat of Argon in kJ/kgK
g_ar=1.667 //Specific heat ratio(gamma) for Argon
R_ar=0.20813 //Specific gas constant for Argon in kJ/kgK
//Solution:
//Refer fig. 26.34, 26.35
m_ar=1 //Assume mass flow rate in kg/s
P1=1 //Assume pressure at entering to L.P. compressor in bar
P2=sqrt(r_p)*P1 //Pressure at leaving to L.P. compressor in bar
P3=P2 //Pressure at entering to H.P. compressor in bar
P4=r_p*P1 //Pressure at leaving to H.P. compressor in bar
T2!=T1*(P2/P1)^((g_ar-1)/g_ar) //Isentropic temperature at 2 in K
T2=(T2!-T1)/(eta_LPC/100)+T1 //Temperature at 2 in K
W_LPC=m_ar*cp_ar*(T2-T1) //Work required by L.P. compressor in kJ/kg/s
T3=T1 //Temperature at 3 in K
T4!=T3*(P4/P3)^((g_ar-1)/g_ar) //Isentropic temperature at 4 in K
T4=(T4!-T3)/(eta_HPC/100)+T3 //Temperature at 4 in K
//Work required is same for both L.P.C. and H.P.C. as pressure ratio is same for both
W_HPC=W_LPC //Work required by H.P. compressor in kJ/kg/s
P5=P4,P6=P2,P7=P6,P8=P1 //Pressure at 5, 6, 7, 8 in bar
T6!=T5/(P5/P6)^((g_ar-1)/g_ar) //Isentropic temperature at 6 in K
T6=T5-eta_HPT/100*(T5-T6!) //Temperature at 6 in K
W_HPT=m_ar*cp_ar*(T5-T6) //Work done by H.P. turbine in kJ/kg/s
//Work done is same for both L.P.T. and H.P.T. as pressure ratio is same for both
W_LPT=W_HPT //Work done by L.P. turbine in kJ/kg/s
T7=T5 //Temperature at 7 in K
//(a)
W=(W_HPT+W_LPT)-(W_HPC+W_LPC) //Net work done in kW/kg
//(b)
r_w=W/(W_HPT+W_LPT) //Work ratio
//(c)
Q1_c=m_ar*cp_ar*(T5-T4) //Heat supplied in combustion chamber in kJ/kg/s
Q1_r=m_ar*cp_ar*(T7-T6) //Heat supplied in reheater in kJ/kg/s
eta=W/(Q1_c+Q1_r) //Overall efficiency
//Results:
printf("\n (a)The work done per kg of fuel flow, W = %.1f kW/kg",W)
printf("\n (b)The work ratio, r_w = %.3f",r_w)
printf("\n (c)The overall efficiency, eta = %.3f\n\n",eta)
