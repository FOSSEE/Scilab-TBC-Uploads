clc;funcprot(0);//EXAMPLE 17.33
// Initialisation of Variables
N=400;.................//Engine rpm
n=1;....................//no of cylinders
W=370;.................//Load on the brake in N
S=50;..................//Spring balance readin in N
Db=1.2;.................//Diameter of the brake drum
mf=2.8;.................//Fuel consumption in kg/h
C=41800;..................//Calorific value of fuel in kJ/kg
D=0.16;...................//Engine bore in m
L=0.2;....................//Engine stroke in m
k=0.5;.....................//Four stroke engine
Sc=1;....................//Spring constant in bar/mm
l=40;....................//Length of diagram in mm
aic=300;.................//Area of indicator card in mm^2
//Calculations
pmi=aic*(Sc/l);..................//Mean effective pressure in bar
IP=(n*pmi*L*(%pi/4)*D*D*k*N*10)/6;..............//Indicated power in kW
disp(pmi,"Indicated power (in kW):")
BP=((W-S)*%pi*Db*N)/(60*1000);............//Brake power in kW
disp(BP,"Brake power (in kW):")
pmb=(BP*6)/(n*L*D*D*(%pi/4)*k*N*10);...........//Brake mean effective pressure in bar
disp(pmb,"Brake mean effective pressure (in bar):")
bsfc=mf/BP;.................//Brake specific fuel consumption in kg/BP h
disp(bsfc,"Brake specific fuel consumption (in kg/BP h)")
etabth=BP/((mf/3600)*C);..................//Brake thermal efficiency
disp(etabth*100,"Brake thermal efficiency (in %):")
etaith=IP/((mf/3600)*C);....................//Indicated thermal efficiency
disp(etaith*100,"Indicated thermal efficiency (in %):")
