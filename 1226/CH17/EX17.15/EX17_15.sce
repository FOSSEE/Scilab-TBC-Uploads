clc;funcprot(0);//EXAMPLE 17.15
//Initialisation of Variables
IP=30;........................//Indicated power in kW
BP=26;........................//Brake power in kW
N=1000;.......................//Engine rpm
fpbph=0.35;...................//Fuel per brake power hour in kg/B.P.h
C=43900;......................//Calorific value of fuel used in kJ/kg
//Calculations
mf=BP*fpbph;.............//Fuel consumption per hour in kg/h
etaIth=IP/((mf/3600)*C);.................//Indicated thermal efficiency
etaBth=BP/((mf/3600)*C);.................//Indicated brake efficiency
etamech=BP/IP;...........................//Mechanical efficiency
disp(etaIth*100,"Indicated thermal efficiency (in %):")
disp(etaBth*100,"Indicated brake efficiency (in %):")
disp(etamech*100,"Mechanical efficiency (in %):")
