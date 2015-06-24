clc
clear
//Input data
P1=1;//Initial pressure of a gas turbine plant in bar
T1=310;//Initial temperature in K
P2=4;//Pressure of air after compressing in a rotary compressor in bar
P3=P2;//Constant pressure process
P41=P1;//Since 1-41 is a constant pressure process in bar
T3=900;//Temperature of air at the point 3 in constant process in K
nc=80;//Efficiency of the compressor in percentage
nt=85;//Efficiency of the turbine in percentage
E=70;//Effectiveness of the plant in percentage
r=1.4;//Isentropic index
Cp=1;//Specific heat of air at constant pressure in kJ/kg K

//Calculations
T21=T1*(P2/P1)^((r-1)/r);//Temperature at the point 21 in the temperature versus entropy graph in K
T2=T1+((T21-T1)/(nc/100));//Temperature of air after the compression process in K
T41=T3/((P3/P41)^((r-1)/r));//Temperature at the point 41 after the isentropic expansion process in K
T4=T3-((T3-T41)*(nt/100));//Temperature at the point 4 in K
Wt=Cp*(T3-T4);//Work done by the turbine in kJ
Wc=Cp*(T2-T1);//Work done by the compressor in kJ
Wn=Wt-Wc;//Net work done in kJ
qs=Cp*(T3-T2);//Heat supplied in kJ
qa=Cp*(T4-T2);//Heat available in the exhaust gases in kJ
H=qa*(E/100);//Actual heat recovered from the exhaust gases in the heat exchanger in kJ
Hs=qs-(H);//Heat supplied by the combustion chamber in kJ
nt=(Wn/Hs)*100;//Thermal efficiency of the gas turbine plant with heat exchanger in percent

//Output 
printf('The overall efficiency of the plant is %3.1f percent',nt)
