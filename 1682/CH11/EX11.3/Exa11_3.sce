//Exa 11.3
clc;
clear;
close;
IR=5;//in % per year
i=15;//in % per year
//Machine X :
disp("Machine X : ");
Ppx=1500000;//in Rs.
n=7;//in years
S=200000;//in Rs.
AMC=300000;//in Rs.
disp("End of year     AMC     InflationFactor     InflatedAmount     P/F     PW");
format('v',9)
Pw=0;//For initialising
for n=1:7
    FP=(1+IR/100)^n
    IA=AMC*FP;//in Rs.
    PF=1/((1+i/100)^n);
    PW=IA*PF;//in Rs.
    Pw=Pw+PW;//in Rs.
    disp("     "+string(n)+"        "+string(AMC)+"         "+string(FP)+"           "+string(IA)+"          "+string(PF)+"      "+string(PW));
end
disp(Pw,"Present worth of inflated annual operating and maintenance cost in Rs. : ");
PWX=Ppx+Pw-S*1/((1+i/100)^n);
disp(PWX,"Present worth of machine X in Rs. : ");
//Machine Y
disp("Machine Y : ");
Ppy=2000000;//in Rs.
n=7;//in years
S=300000;//in Rs.
AMC=250000;//in Rs.
disp("End of year     AMC     InflationFactor     InflatedAmount     P/F     PW");
format('v',9)
Pw=0;//For initialising
for n=1:7
    FP=(1+IR/100)^n
    IA=AMC*FP;//in Rs.
    PF=1/((1+i/100)^n);
    PW=IA*PF;//in Rs.
    Pw=Pw+PW;//in Rs.
    disp("     "+string(n)+"        "+string(AMC)+"         "+string(FP)+"           "+string(IA)+"          "+string(PF)+"      "+string(PW));
end
disp(Pw,"Present worth of inflated annual operating and maintenance cost in Rs. : ");
PWY=Ppy+Pw-S*1/((1+i/100)^n);
disp(PWY,"Present worth of machine Y in Rs. : ");
disp("Since the present worth of Machine X is less than Machine Y, select Machine X")
//Note : Calculations are not accurate in the book