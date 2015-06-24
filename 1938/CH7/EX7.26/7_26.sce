clc,clear
printf('Example 7.26\n\n')

//subscipt 1 refers to factory load
P_1=1800
phi_1=acos(0.6) //lagging
Q_1=P_1*tan(phi_1)

//Subscript 2 refers to synchronous condenser
P_2=0

//Subscript T refers to combination of condenser and factory load
P_T=P_1+P_2
phi_T=acos(0.95) //lagging
Q_T=P_T*tan(phi_T)

kva_rating=sqrt(P_T^2+ Q_T^2)

Q_2=Q_T - Q_1
printf('(i)kVA rating of synchronous condender is %.3f kVA \n   Minus sign indicates leading nature\n\n',(Q_2))
printf('(ii)kVA rating of total factory is %.4f kVA',kva_rating)
