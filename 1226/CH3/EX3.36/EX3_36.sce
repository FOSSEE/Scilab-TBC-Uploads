clc;funcprot(0);//EXAMPLE 3.36
// Initialisation of Variables
p1=1;...................//Pressure of air entering the compressor in bar
t1=300;.................//Temperature of air entering the compressor in bar
rp=6;...................//Pressure ratio
rtc=2.5;.................//Ratio of turbine work to compressor work
ga=1.4;............//Ratio of specific heats
//calculations
t2=t1*(rp^((ga-1)/ga));..................//Temperature at the end of isentropic expansion in K
t3=(rtc*(t2-t1))/(1-(1/(rp^((ga-1)/ga))));........//Temperature at the end of isobaric expansion in K
t4=t3/(rp^((ga-1)/ga));.......................//Temperature at the end of isentropic compression in K
eta=(t3-t4-t2+t1)/(t3-t2);...................//Cycle efficiency
disp(t3,"Maximum temperature in K:")
disp(eta*100,"Cycle efficiency in %:")

