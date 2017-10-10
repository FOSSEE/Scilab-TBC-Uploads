clc
clear
mprintf('Mechanical vibrations by G.K.Grover\n Example 7.7.2\n')
//given data
J(1)=100//moment of inertia of first rotor in Kg-m^2
J(2)=50//moment of inertia of second rotor in Kg-m^2
J(3)=10//moment of inertia of third rotor in Kg-m^2
J(4)=50//moment of inertia of fourth rotor in Kg-m^2
Kt(1)=10^4//stiffness of shaft between 1 and 2 in N-m/rad
Kt(2)=10^4//stiffness of shaft between 2 and 3 in N-m/rad
Kt(3)=2*10^4//stiffness of shaft between 3 and 4 in N-m/rad
To=10000//amplitude of applied torque in N-m
W=5//frequency of applied torque in rad/sec
//calculations
b(1)=-(0.789*To)/3825//twist of shaft 1 in rad
P(1)=J(1)*W^2
Q(1)=P(1)*b(1)//twisting moment of shaft 1 in N-m
R(1)=Q(1)
S(1)=R(1)/Kt(1)//twist of shaft 1 in radians
b(2)=b(1)-S(1)//twist of shaft 2 in rad
P(2)=J(2)*W^2
Q(2)=P(2)*b(2)
R(2)=Q(1)+Q(2)+To//twisting moment of shaft 2 in N-m
S(2)=R(2)/Kt(2)//twist of shaft 2 in radians
b(3)=b(2)-S(2)//twist of shaft 3 in rad
P(3)=J(3)*W^2
Q(3)=P(3)*b(3)
R(3)=Q(2)+Q(3)//twisting moment of shaft 3 in N-m
S(3)=R(3)/Kt(3)//twist of shaft 3 in radians
b(4)=b(3)-S(3)//twist of shaft 4 in rad
P(4)=J(4)*W^2
Q(4)=P(4)*b(4)
R(4)=Q(3)+Q(4)//twisting moment of shaft 4 in N-m
mprintf('The amplitudes of discs are as follows\n disc1=%4.4f rad\n disc2=%4.4f rad\n disc3=%4.4f rad\n disc4=%4.4f rad',b(1),b(2),b(3),b(4))
mprintf('\nThe twists of shaft are as follows\nfirst shaft=%5.5f rad\nsecond shaft=%5.5f rad\nthird shaft=%5.5f rad',S(1),S(2),S(3))
mprintf('\nThe twisting moments of shafts are as follows\nfirst shaft=%5.5f N-m\nsecond shaft=%5.5f N-m\nthird shaft=%5.5f N-m',R(1),R(2),R(3)) 
mprintf('\nNOTE:The slight difference in values are due to the more accurate values\ncalculated by SCILAB')
