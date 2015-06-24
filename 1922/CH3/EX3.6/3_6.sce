clc
clear
//Initialization of variables
p=[2.75 0.5 0.31 0.31 2.75]
v=[116.17 654.8 654.8 597 110.65]
t=[440 440 170 140 410]
h=[3325 3356 2802.6 2738.5 3257.7]
e=[3005.6 3028.6 2602.6 2553.6 2953.4]
//calculations
dh1=h(2) - h(1)
de1=e(2) - e(1)
q2=e(3) - e(2)
dh2=h(3) - h(2)
dh3=h(4) - h(3)
de3=e(4) - e(3)
W3= p(3) *(v(4) - v(3))
Q3= de3+W3
dh4=h(5)  -h(4)
de4=e(5) -e(4)
dh5=h(1) - h(5)
de5= e(1) - e(5)
W5= p(5) *(v(1) - v(5))
q5 = de5+W5
//results
printf("In case 1 , dH = %.1f kJ/kg dE = %.1f kJ/kg W= pDv kJ/kg Q= %.1f + W kJ/kg",dh1,de1,de1)
printf("\n In case 2, W =0 kJ/kg Q = dE = %d kJ/kg dH = %.1f kJ/kg",q2,dh2)
printf("\n In case 3, dH= %.1f kJ/kg dE = %.1f kJ/kg W= %.1f kJ/kg Q = %.1f kJ/kg",dh3,de3,W3,Q3)
printf("\n In case 4, Q= 0 kJ/kg dH = %.1f kJ/kg dE = -W = %.1f kJ/kg",dh4,de4)
printf("\n In case 5, dH = %.1f kJ/kg dE = %.1f kJ/kg W = %.1f kJ/kg Q = %.1f kJ/kg",dh5,de5,W5,q5)
xlabel("Volume (m^3/kg)")
ylabel("Pressure (Mpa)")
plot(v,p)
