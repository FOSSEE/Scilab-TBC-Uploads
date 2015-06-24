clc;funcprot(0);//EXAMPLE 3.27
// Initialisation of Variables
t1=300;...............//Initial temperature
rmami=70;....................//Ratio of max pressure and min pressure
r=15;....................//Compression ratio
ga=1.4;.................//Ratio of specific heats
R=287;....................//Gas constant in kJ/kgK
t2=t1*(r^(ga-1));.................//Temperature at the end of adiabatic compression in K
t3=t2*(rmami/(r^ga));............//Temperature at the end of isochoric compression in K
t4=t3+((t3-t2)/ga);..............//Temperature at the end of isobaric process in K
t5=t4/((1/(t4/(t3*r)))^(ga-1));..........//Temperature at the end of adiabatic expansion in K
etast=1-[(t5-t1)/((t3-t2)+ga*(t4-t3))];..............//Air standard efficiency
disp(etast*100,"Air standard efficiency in %:")
