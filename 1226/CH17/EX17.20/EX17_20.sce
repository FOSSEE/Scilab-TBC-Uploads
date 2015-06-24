clc;funcprot(0);//EXAMPLE 17.20
// Initialisation of Variables
n=6;.......................//No of cylinders
Vs=1.75*10^(-3);..............//Stroke volume in m^3
IP=26.3;.....................//Indicated power in kW
Ne=504;.......................//Expected Engine rpm
Pmi=6;........................//Mean effective pressure in bar
k=0.5;.........................//Four stroke engine
//Calculations
Na=floor((IP*6)/(n*Pmi*Vs*k*10));.......................//Actual Engine rpm
af=(Na*n)/2;.......................//Actual no of fires in min
ef=(Ne*n)/2;.......................//Expected no of fires in min
Nm=ef-af;........................//No of misfires/min
nm=Nm/n;....................//Average no of times each cylinder misfires in one min
disp(nm,"Average no of times each cylinder misfires in one min:")
