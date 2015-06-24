clc
clear

//Input data
Po1=500 //Stagnation pressure in kPa
To1=600 //Stagnation temperature in K
C1=100 //inlet velocity in m/s
A1=0.01 //Inlet Area in m^2
A2=0.01 //Exit Area in m^2
Mx=1.2 //Mach number before the shock
Ax=37.6 //Area just before the shock in cm^2
Ay=37.6 //Area just after the shock in cm^2
Px=109.9 //Pressure before the shock in kPa
Poy=350 //Stagnation pressure after shock in kPa
k=1.4 //Adiabatic constant 
R=287 //Specific gas constant in J/kg-K
Cp=1005 //Specific heat capacity at constant volume in J/kg-K

//Calculation
T1=To1+(C1^2/(2*Cp)) //Inlet static temperature in K
ai_1=sqrt(k*R*T1) //Velocity of sound at inlet in m/s
M1=C1/ai_1 //Inlet Mach number 
p1=0.973 //Static to Stagnation pressure ratio at entry from gas tables @M1 
P1=Po1*p1 //Inlet static pressure in kPa
d1=P1*10^3/(R*T1) //Density at inlet in kg/m^3, P1 in Pa
m=d1*A1*C1 //Mass flow rate at inlet in kg/s
p2=0.528 //Ratio of critical pressure to stagnation pressure from gas tables @M=1
Pt=Po1*p2 //Critical pressure in kPa
t1=0.834 //Ratio of critical temperature to stagnation temperature from gas tables @M=1
Tt=t1*To1 //critical temperature in K
ai_t=sqrt(k*R*Tt) //Velocity of sound at critical state in m/s
Ct=ai_t //Velocity of air at critical state in m/s
a1=2.964 //Ratio of inlet area to critical area from gas tables @M=1
At=A1/a1 //critical area in m^2
dt=Pt/(R*Tt) //Density at critical state in kg/m^3
mt=dt*At*Ct //Mass flow rate at critical satate in kg/s
//Sub-division (a)
a2=1.030 //Ratio of area after shock to critical area from gas tables @Mx
Ay_a=At*a2 //Area after shock in cm^2
p3=0.412 //Ratio of upstram of shock to stagnation pressures from isentropic gas tables @Mx
Px_a=Po1*p3 //Pressure upstram of shock in kPa
t2=0.776 //Ratio of upstram of shock to stagnation temperature from isentropic gas tables @Mx
Tx_a=To1*t2 //Temperature upstram of shock in K
My_a=0.84 //Mach number downstream of shock from normal shock gas tables @Mx
p4=1.497 //Static pressure ratio after and before the shock from gas tables @My
Py_a=Px_a*p4 //Static pressure after shock in kPa
t3=1.099 //Temperature ratio after and before the shock from gas tables @My
Ty_a=Tx_a*t3 //Temperature ratio after the shock in K
p5=2.407 //Stagnation pressure after shock to Static pressure before shock from gas tables @My
Poy_a=Px_a*p5 //Stagnation pressure after shock in kPa
a3=1.204 //Ratio of area after shock to throat area after shock from isentropic gas tables @My
At2_a=(Ay_a/a3)*10^4 //Throat area at exit in m^2, calculation mistake in textbook
a4=A2/At2_a //Ratio of areas to find gas tables 
M2_a=0.2 //Exit mach number at section-A from gas tables @a4
p5=0.973 //ratio of exit pressure to stagnation pressure after shock from gas tables
P2_a=p5*Poy_a //exit pressure in kPa
//Sub-division (b)
a5=Ax/At //Ratio of area before shock to critical area
Mx_b=1.4 //Mach number at section-B from gas tables @a5
p6=0.314 //Ratio of upstram of shock to stagnation pressures from isentropic gas tables @Mx_b
Px_b=Po1*p6 //Pressure upstram of shock in kPa
t4=0.718 //Ratio of upstram of shock to stagnation temperature from isentropic gas tables @Mx_b
Tx_b=To1*t4 //Temperature upstram of shock in K
p20=3.049 //Stagnation pressure ratio after shock to Static pressure before shock from gas tables 
Poy_b=Px_b*p20 //Stagnation pressure after shock in kPa
My_b=0.735 //Mach number downstream of shock from normal shock gas tables @Mx_b
p7=2.085 //Static pressure ratio after and before the shock from gas tables @My_b
Py_b=Px_b*p7 //Static pressure after shock in kPa
t5=1.260 //Temperature ratio after and before the shock from gas tables @My_b
Ty_b=Tx_b*t5 //Temperature after the shock in K
a6=1.071 //Ratio of area after shock to throat area after shock from isentropic gas tables My_b=0.735
At2_b=Ay/a6 //Throat area at exit in m^2
a7=A2/At2_b //Ratio of areas
M2_b=0.21 //Exit mach number at section-B from gas tables @a7
p8=0.9697 //ratio of exit pressure to stagnation pressure after shock from gas tables
P2_b=p8*Poy_b //exit pressure in kPa
//Sub-division (c)
p9=Px/Po1 //Ratio of upstram of shock to stagnation pressures 
Mx_c=1.65 //Mach number at section-B from gas tables @p9
a8=1.292 //Ratio of area before shock to critical area from gas tables @p9
Ax_c=At*a8*10^4 //Area before shock in cm^2
t6=0.647 //Ratio of upstram of shock to stagnation temperature from isentropic gas tables @p9
Tx_c=To1*t6 //Temperature upstram of shock in K
My_c=0.654  //Mach number downstream of shock from normal shock gas tables @Mx_c
p10=3.0095 //Static pressure ratio after and before the shock from gas tables @My_c
Py_c=Px*p10 //Pressure downstram of shock in kPa
t7=1.423 //Temperature ratio after and before the shock from gas tables @My_c
Ty_c=Tx_c*t7 //Temperature after the shock in K
p12=4 //Stagnation pressure after shock to Static pressure before shock from gas tables @Mx_c
Poy_c=Px*p12 //Stagnation pressure after shock in kPa
a9=1.136 //Ratio of area after shock to throat area after shock from gas tables My_c=0.654
At2_c=Ax_c/a9 //Throat area at exit in m^2
a8=A2/At2_c //Ratio of areas
M2_c=0.23 //Exit mach number at section-B from gas tables @a8
p11=0.964 //ratio of exit pressure to stagnation pressure after shock from gas tables
P2_c=p11*Poy_c //exit pressure in kPa
//Sub-division (D)
p13=Poy/Po1 //Pressure ratio, Since Pox=Po1
Mx_d=2.04 //Mach number upstream of shock from gas tables @p13
My_d=0.571 //Mach number downstream of shock from gas tables @p13
p14=4.688 //Static pressure ratio after and before the shock from gas tables @My_d
t8=1.72 //Temperature ratio after and before the shock from gas tables @My_d
p15=5.847 //Stagnation pressure after shock to Static pressure before shock from gas tables @Mx_d
p16=0.120 //Ratio of upstram of shock to stagnation pressures from isentropic tables @Mx_d
Px_d=Po1*p16 //Pressure upstram of shock in kPa
t9=0.546 //Ratio of upstram of shock to stagnation temperature from isentropic gas tables @Mx_d
Tx_d=To1*t9 //Temperature upstram of shock in K
p21=4.688 //Static pressure ratio after and before the shock from gas tables 
Py_d=Px_d*p21 //Pressure downstram of shock in kPa
t12=1.72 //Ratio of upstram of shock to stagnation temperature from isentropic gas tables 
Ty_d=Tx_d*t12 //Temperature after the shock in K
a9=1.745 //Ratio of area before shock to throat area from isentropic gas tables 
Ax_d=At*a9*10^4 //Area before shock in cm^2
a10=1.226 //Ratio of area after shock to throat area after shock from isentropic tables @My_d
At2_d=(Ax_d/a10) //Throat area at exit in cm^2
a11=A2/At2_d //Ratio of areas
M2_d=0.29 //Exit mach number at section-B from gas tables @a11
p17=0.943 //ratio of exit pressure to stagnation pressure after shock from gas tables
P2_d=p17*Poy //exit pressure in kPa
//Sub-division (e)
a12=Ax/At //Ratio of areas
Mx_e=2.62 //Mach number upstream of shock from gas tables @a12
t10=0.421 //Ratio of upstram of shock to stagnation temperature from isentropic gas tables 
Tx_e=To1*t10 //Temperature upstram of shock in K
p18=0.0486 //Ratio of upstram of shock to stagnation pressures from isentropic tables @Mx_e
Px_e=p18*Po1 //Pressure upstram of shock in kPa
My_e=0.502 //Mach number downstream of shock from gas tables @Mx_e
p19=7.842 //Static pressure ratio after and before the shock from gas tables @My_e
Py_e=Px_e*p19 //Pressure downstram of shock in kPa
P2_e=Py_e //Exit pressure in kPa
t11=2.259 //Temperature ratio after and before the shock from gas tables @My_d
Ty_e=Tx_e*t11 //Temperaure downstram of shock in K
T2_e=Ty_e //Exit temperature in K

//Output 
printf('At throat:\n    Mass flow rate is %3.2f kg/s\n    Area at throat is %3.5f m^2\n    Pressure is %3i kPa\n    Temperature is %3.1f K\n    Velocity is %3.1f m/s\n (a)At section (A):\n    Pressure upstream is %3i kPa\n    Temperature upstream is %3.1f K\n    Mack number downstream is %3.2f\n    Pressure downstream is %3.3f kPa\n    Temperature downstream is %3.3f K\n    Stagnation pressure downstream is %3.1f kPa\n    Area is %3.3f cm^2\n  At exit:\n    Mach number is %3.1f\n    Pressure is %3.1f kPa\n (b)At section (B):\n    Pressure upstream is %3i kPa\n    Temperature upstream is %3.1f K\n    Mack number upstream is %3.1f\n    Mack number downstream is %3.3f\n    Pressure downstream is %3.2f kPa\n    Temperature downstream is %3.2f K\n    Stagnation pressure downstream is %3.1f kPa\n    Area is %3.3f cm^2\n  At exit:\n    Mach number is %3.2f\n    Pressure is %3.1f kPa\n (c)At section (C):\n    Area upstream is %3.2f cm^2\n    Temperature upstream is %3.1f K\n    Mack number upstream is %3.2f\n    Mack number downstream is %3.3f\n    Pressure downstream is %3.2f kPa\n    Temperature downstream is %3.2f K\n    Stagnation pressure downstream is %3i kPa\n    Area is %3.4f cm^2\n  At exit:\n    Mach number is %3.2f\n    Pressure is %3.1f kPa\n (d)At section (D):\n    Pressure upstream is %3i kPa\n    Temperature upstream is %3.1f K\n    Area upstream is %3.3f cm^2\n    Mack number upstream is %3.2f\n    Mack number downstream is %3.2f\n    Pressure downstream is %3.2f kPa\n    Temperature downstream is %3.2f K\n    Area is %3.3f cm^2\n  At exit:\n    Mach number is %3.2f\n    Pressure is %3.2f kPa\n (e)At section (E):\n    Pressure upstream is %3.1f kPa\n    Temperature upstream is %3.1f K\n    Mack number upstream is %3.2f\n    Mack number downstream is %3.3f\n    Pressure downstream is %3.1f kPa\n    Temperature downstream is %3.2f K\n  At exit:\n    Temperature is %3.2f K\n    Pressure is %3.1f kPa\n',m,At,Pt,Tt,Ct,Px_a,Tx_a,My_a,Py_a,Ty_a,Poy_a,At2_a,M2_a,P2_a,Px_b,Tx_b,Mx_b,My_b,Py_b,Ty_b,Poy_b,At2_b,M2_b,P2_b,Ax_c,Tx_c,Mx_c,My_c,Py_c,Ty_c,Poy_c,At2_c,M2_c,P2_c,Px_d,Tx_d,Ax_d,Mx_d,My_d,Py_d,Ty_d,At2_d,M2_d,P2_d,Px_e,Tx_e,Mx_e,My_e,Py_e,Ty_e,T2_e,P2_e)
