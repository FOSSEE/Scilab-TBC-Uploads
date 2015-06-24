clc;funcprot(0);//EXAMPLE 17.45
// Initialisation of Variables
n=4;........................//No of cylinders
ga=1.4;...................//Degree of freedom
D=0.075;..................//Engine bore in m
L=0.1;...................//Engine stroke in m
mf=6;.......................//Fuel consumption in kg/h
C=83600;..................//Calorific value of fuel used
Vc=0.0001;.................//Clearence volume in m^3
BP=15.6;.................//Brake power wilh all cylinder working in kW
BP1=11.1;...................//Brake power wilh cylinder no 1 cutout in kW
BP2=11.03;...................//Brake power wilh cylinder no 2 cutout in kW
BP3=10.88;...................//Brake power wilh cylinder no 3 cutout in kW
BP4=10.66;...................//Brake power wilh cylinder no 4 cutout in kW
//Calculations
IP1=BP-BP1;...........................//Indicated power produced in cylinder 1 in kW
IP2=BP-BP2;...........................//Indicated power produced in cylinder 2 in kW
IP3=BP-BP3;...........................//Indicated power produced in cylinder 3 in kW
IP4=BP-BP4;...........................//Indicated power produced in cylinder 4 in kW
IP=IP1+IP2+IP3+IP4;.............................//Total Indicated power produced in kW
etamech=BP/IP;..............................//Mechanical efficiency
disp(etamech*100,"Mechanical efficiency in %:")
etaith=IP/((mf/3600)*C);.....................//Indicated thermal efficiency
disp(etaith*100,"Indicated thermal efficiency in %:")
Vs=(%pi/4)*D*D*L;..........................//Stroke volume in m^3
r=(Vs+Vc)/Vc;................................//Compression ratio
etast=1-(1/(r^(ga-1)));...........................//Air standard efficiency
disp(etast*100,"Air standard efficiency in %:")
