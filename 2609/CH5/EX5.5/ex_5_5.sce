//Ex 5.5
clc;
clear;
close;
format('v',4);
Ad=5:200;//Gain
R1max=50;//kohm(Potentiometer)
R4=10;R3=10;//kohm
//Case 1st : Ad=Admin &R1=R1max
R1=R1max;//kohm
R2=(min(Ad)-1)/2*R1max
//Case 2nd : Ad=Admax &R1=R1min
R1min=2*R2/(max(Ad)-1);//kohm
disp(R2,"Resistance R2(kohm)");
disp(R1min,"Minimum value of resistance R1(kohm)");
