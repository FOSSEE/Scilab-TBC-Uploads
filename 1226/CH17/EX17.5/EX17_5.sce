clc;funcprot(0);//EXAMPLE 17.5
// Initialisation of Variables
n=6;.....................//No of cylinders
Pmb=6;....................//Brake mean effective pressure in bar
N=1000;..................//Engine rpm
k=0.5;.......................//For four stroke engine
Wce=820;.................//Work during compression and expansion in kW
Wie=50;...................//Work during intake and exhaust in kW
f=150;......................//Rubbing friction in engiine in kW
WnetT=40;...................//Net work done by turbine in kW
//Calculations
BP=Wce-(Wie+f+WnetT);.....................//Net work available or brake power in kW
D=((BP*6)/(n*Pmb*(%pi/4)*N*k*10))^(1/3);......................//Bore of engine in m
L=D;.........................................//Given that bore is equal to stroke
disp(D*1000,"Since the stroke and bore are equal, their value is (in mm):")
