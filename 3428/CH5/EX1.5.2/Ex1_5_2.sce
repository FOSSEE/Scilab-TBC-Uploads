//Section-1,Example-2,Page no.-AC.437
clc;
E_m=3.4
V_m=0.7
E_f=69
V_f=0.3
A_c=250*10^-6
E_c=((E_m*V_m)+(E_f*V_f))
disp (E_c,'longitudinal modulus of elasticity(GPa)')
Q_c=60*10^6
A_c=250*10^-6
P_c=Q_c*A_c             //P_c=P_f+P_m
disp(P_c,'Load carried by composite phases(P_c)')
P=((E_f*V_f)/(E_m*V_m))
//disp P,where P=P_f/P_m
P_m=15000/9.7
disp(P_m,'Load carried by matrix phases(P_m)')
P_f=8.7*(P_m)
disp (P_f,'Load carried by fibres phases(P_f)')
//V_m=A_m/A_c
A_m=V_m*A_c
A_f=V_f*A_c
Q_m=(P_m/A_m)*10^-6
Q_f=(P_f/A_f)*10^-6
e_m=(Q_m/(E_m*10^3))
disp(e_m,'The strain sustained by phase when the stress of 60 MPa is applied')
e_f=(Q_f/(E_f*10^3))
disp(e_f,'The strain sustained by phase when the stress of 60 MPa is applied')








