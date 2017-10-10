//Example 3_7 page no:122
clc
R4=4//resistance in ohm
R3=3//resistance in ohm
R6=6//resistance in ohm
Rt=((R3*R6)/(R3+R6))//resistance in parallel
//after adding ammeter
R3=4
RT=R4+((R3*R6)/(R3+R6))//total resistance
It=10/(4+((6*3)/(6+3)))//total current
I3=It*Rt/R3
V=It*1
Ia=V/RT;
Ia=1.21-Ia;
disp(Ia,"current flowing in ammeter is (in A)")
//current in ammeter has more decimal places hence values are rounded off in text book
