clc
//initialization of varaibles
k=1.3
P=100 //psia
//calculations
Pratio=(2/(k+1))^(k/(k-1))
Pt=Pratio*P
disp("From table 3,")
ht=1221.5 //B/lb
vt=8.841 //cu ft/lb
at=w*vt/1700
//results
printf("Throat area = %.4f sq ft",at)
