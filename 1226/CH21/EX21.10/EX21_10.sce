clc;funcprot(0);//EXAMPLE 21.10
// Initialisation of Variables
t1=288;........//Temperature of air entering the turbine in K
t3=883;..............//Temperature before expansion in turbine in K
etac=0.82;....//Efficiency of compressor
etathp=0.85;.....//Efficiency of high pressure turbine
etatlp=0.85;.....//Efficiency of low pressure turbine
rp=7;...........//Pressure ratio
p1=1.01;...............//Pressure of air before entering compressor
ga=1.4;........//Ratio of specific heats for compression
gag=1.333;........//Ratio of specific heats for expansion
cp=1.005;.............//Specific heat at constant pressure in kJ/kgK 
cpg=1.15;.............//Specific heat at constant pressure in kJ/kgK in generator
//Calculations
p2=p1*rp;
t2=t1*((p2/p1)^((ga-1)/ga));...............//Ideal temperature of air after compression in K
t21=((t2-t1)/etac)+t1;..............//Actual temperature of air after compression in K
wc=cp*(t21-t1);............//Compressor work in kJ/kg
t41=t3-(wc/cpg);..........//Temperature of gasses entering the turbine in K
disp(t41,"Temperature of gasses entering the turbine in K:")
t4=round(t3-((t3-t41)/etathp));.........//Ideal temperature of gases entering the turbine in K
p3=p2;.........//Isobaric processes
p4=p3/((t3/t4)^(1/((gag-1)/gag)));....//Pressure of gasses entering the power turbine in bar
disp(p4,"Pressure of gasses entering the power turbine in bar:")
t5=t41*((((t3/t4)^(1/((gag-1)/gag)))/(rp))^((gag-1)/gag));
t51=t41-(etatlp*(t41-t5));
wlp=cpg*(t41-t51);............//Net power output in kW
disp(wlp,"Net power output in kW:")
wr=wlp/(wlp+wc);............//Work ratio
disp(wr,"Work ratio:")
qs=cpg*(t3-t21);...........//Heat supplied in kJ/kg
etath=wlp/qs;..........//Thermal efficiency
disp(etath*100,"Thermal efficiency of the unit:")

