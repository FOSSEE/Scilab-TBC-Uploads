clc
// initialization of variables
clear
// Material properties
E=200 //GPa
A=100 //mm^2
Y1=500 //M Pa
Y2=250 // MPa
// calculations
E=E*10^9 // Pa
A=A*10^-6 //m^2
Y1=Y1*10^6 // Pa
Y2=Y2*10^6 //Pa
L_FG=1 //m
L_CD=2 // m
P1=Y2*A
e=P1*L_FG/(E*A)
e_FG=e
e_CD=e
P2=E*A*e_FG/L_FG
P3=E*A*e_CD/L_CD
Py=2*P1+2*P2+P3
//results
printf('part (a) \n')
printf(' Yield Load Py = %.1f kN and the displacement is %.2f mm',Py/10^3,e*10^3)

// part(b)
P4=Y1*A
e=P4*L_FG/(E*A)
P5=E*A*e/L_CD
P=2*P1+2*P4+P5
printf('\n part (b) \n')
printf(' Yield Load P = %.1f kN and the displacement is %.2f mm',P/10^3,e*10^3)
// Fully plastic load
P6=Y2*A*2
Pp=2*P1+2*P4+P6
e_CD=P6*L_CD/(E*A)
printf('\n Fully Plastic Load Pp = %.1f kN and the displacement is %.2f mm',Pp/10^3,e_CD*10^3)

