clc;funcprot(0);//EXAMPLE 3.32
// Initialisation of Variables
p1=101.325;....................//Pressure of intake air in kPa
t1=300;.......................//Temperature of intake air in kPa
rp=6;.........................//Pressure ratio in the cycle
ga=1.4;.........................//Ratio of specific heats
rtc=2.5;...........................//Ratio of turbine work and compressor work
//Calculations
t2=t1*(rp^((ga-1)/ga));..................//Temperature at the end of isentropic expansion in K
t3=(rtc*(t2-t1))/(1-(1/(rp^((ga-1)/ga))));........//Temperature at the end of isobaric expansion in K
t4=t3/(rp^((ga-1)/ga));.......................//Temperature at the end of isentropic compression in K
eta=(t3-t4-t2+t1)/(t3-t2);...................//Cycle efficiency
disp(eta*100,"Cycle efficiency in %:")
