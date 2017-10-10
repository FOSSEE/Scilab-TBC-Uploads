////
//Variable declaration
n = 2.5          //moles of ideal gas
R = 0.08314      //Ideal gas constant, bar.L/(mol.K)
cvm = 20.79      //Heat Capacity at constant volume, J/(mol.K)

p1 = 16.6       //Pressure at point 1, bar
v1 = 1.00       //Volume at point 1, L
p2 = 16.6       //Pressure at point 2, bar
v2 = 25.0       //Volume at point 2, L 
v3 = 25.0       //Volume at point 3, L

//Calculations
T1 = p1*v1/(n*R)
T2 = p2*v2/(n*R)
T3 = T1         //from problem statement
        //for path 1-2
DU12 = n*cvm*(T2-T1)
w12 = -p1*1e5*(v2-v1)*1e-3
q12 = DU12 - w12
DH12 = DU12 + n*R*(T2-T1)*1e2

        //for path 2-3
w23 = 0.0
DU23=n*cvm*(T3-T2)
;q23=n*cvm*(T3-T2)
;
DH23 = -DH12


        //for path 3-1
DU31 = 0.0       //Isothemal process
DH31 = 0.0
w31 = -n*R*1e2*T1*log(v1/v3)
q31 = -w31

DU = DU12+DU23+DU31
w = w12+w23+w31
q = q12+q23+q31
DH = DH12+DH23+DH31

//Results
printf("\n For Path       q         w           DU            DH         ')
printf("\n 1-2       %7.2f  %7.2f    %7.2f     %7.2f",q12,w12,DU12,DH12)

printf("\n 2-3       %7.2f    %7.2f   %7.2f    %7.2f",q23,w23,DU23,DH23)

printf("\n 3-1        %7.2f    %7.2f     %7.2f       %7.2f",q31,w31,DU31,DH31)

printf("\n Overall    %7.2f  %7.2f     %7.2f       %7.2f",q,w,DU,DH)

printf("\n all values are in J')
