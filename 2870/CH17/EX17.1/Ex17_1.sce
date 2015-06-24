clc;clear;
//Example 17.1

//given data
V1=250;
T1=255.07;
P1=54.05;
h=5000;

//from Table A-2a
cp=1.005;//in kJ/kg-K
k=1.4;

//calculations
T01=T1+V1^2/(2*cp*1000);//factor of 1000 to convert kJ to J
P01=P1*(T01/T1)^(k/(k-1));
//given pressure ratio in compressor *
// T02 = T01*(P02/P01)^((k-1)/k)
T02 = T01*(8)^((k-1)/k);
win=cp*(T02-T01);
disp(P01,'the stagnation pressure at the compressor inlet in kPa');
disp(win,'the required compressor work per unit mass in kJ/kg')
