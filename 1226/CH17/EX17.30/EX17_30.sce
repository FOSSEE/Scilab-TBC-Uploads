clc;funcprot(0);//EXAMPLE 17.30
// Initialisation of Variables
n=1;.......................//No of cylinders
D=0.18;...................//Engine bore in m
L=0.34;....................//Engine stroke in m
N=400;......................//Engine rpm
mepw=6.4;.................//Mean effective pressure of working loop in bar
mepp=0.36;..................//Mean effective pressure of pumping loop in bar
mepd=0.64;.................//Mean effective pressure (dead cycle) iin bar
fs=46;................//Firing strokes per min
//calculations
pminet=mepw-mepp;..........//Net indicated mean effective pressure in bar
dc=(N/2)-fs;...............//Dead cycles per min
IPnet=(n*pminet*(%pi/4)*L*D*D*fs*4*10)/6;.............//Net indicated power output in kW
ppdc=(n*pminet*L*(%pi/4)*D*D*10*dc)/6;.............//Pumping power of dead cycles in kW
FP=IPnet-ppdc;...........................//Frictional power in kW
IP=(n*pminet*L*(%pi/4)*D*D*(N/2)*10)/6;...............//Indicated power in kW
BP=IP-FP;..................//Brake power in kW
disp(BP,"Brake power (in kW):")
etamech=BP/IP;.................//Mechanical efficiency
disp(etamech*100,"Mechanical efficiency (in %):")
