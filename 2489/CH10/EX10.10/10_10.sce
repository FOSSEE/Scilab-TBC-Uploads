clc
//Intitalisation of variables
clear
p1= 141 //mm
p2= 387 //mm
n1= 2 //moles
n2= 1 //moles
T1= 653 //K
T2= 693 //K
x1= 159.6 //mm
//CALCULATIONS
Phg= 2*p1/3
Po2= 0.5*Phg
Phg1= 2*p2/3
Po21= 0.5*Phg1
Kp1= Phg^2*Po2
Kp2= Phg1^2*Po21
dH= log10(Kp2/Kp1)*4.576*T1*T2/(T2-T1)
Kp3= (x1*2)^2*x1
T3= 1/((log10(Kp1/Kp3)*4.576/(dH+9))+(1/T1))
T4= T3-273
//RESULTS
printf ('PHg = %.f mm',Phg)
printf ('\n PO2 = %.f mm',Po2)
printf ('\n PHg = %.f mm',Phg1)
printf ('\n PO2 = %.f mm',Po21)
printf ('\n Kp1 = %.2e',Kp1)
printf ('\n Kp2 = %.2e',Kp2)
printf ('\n dH = %.f cal',dH+9)
printf ('\n T3 = %.f K',T3)
printf ('\n T4 = %.f C',T4)
