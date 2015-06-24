clc,clear
printf('Example 7.14\n\n')

//subscript 1 indicates induction motor 1
P_1=350
phi_1=acos(0.7071) //lagging
Q_1=P_1*tan(phi_1)//from power triangle

//subscript 2 indicates induction motor 2
P_2=190

//subscript T indicates total
P_T=P_1+P_2
phi_T=acos(0.9) //lagging
Q_T=P_T*tan(phi_T)

Q_2=Q_T-Q_1
kva_rating=sqrt(P_2^2+ Q_2^2)
printf('kVA rating of synchronous motor is %.2f kVA',kva_rating)
