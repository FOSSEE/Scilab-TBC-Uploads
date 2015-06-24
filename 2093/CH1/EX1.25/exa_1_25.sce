// Exa 1.25
clc;
clear;
close;
// Given data
R1= 9;// in kΩ
R2= 1;// in kΩ
R3= 2;// in kΩ
R4= 3;// in kΩ
// The output voltage, vo1= (1+R1/R2)*va
vo1BYva= (1+R1/R2);//       (i)
// Voltage at node va= R4*v1/(R3+R4)
vaBYv1= R4/(R3+R4);//       (ii)
// From (i) and (ii)
vo1BYv1= vo1BYva*vaBYv1;//      (iii)
// The output voltage, vo2= (1+R1/R2)*va
vo2BYva= (1+R1/R2);//       (iv)
// Voltage at node va= R3*v2/(R3+R4)
vaBYv2= R3/(R3+R4);//       (v)
// From (i) and (ii)
vo2BYv2= vo2BYva*vaBYv2;//      (iii)
// The output voltage, vo3= (-R1/R2)*v3
vo3BYv3= (-R1/R2);//       (i)

// Total output vo= vo1 + vo2 + vo3
disp("Total voltage is "+string(vo1BYv1)+" v1 + "+string(vo2BYv2)+" v2 "+string(vo3BYv3)+" v3")
