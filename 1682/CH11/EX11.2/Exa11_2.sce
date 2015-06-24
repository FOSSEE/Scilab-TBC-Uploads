//Exa 11.2
clc;
clear;
close;
disp("The method of finding the economic life of the machine witha discounting factor of 20% at zero inflation rate is summarized in table below. From the table it is clear that total annual cost is minimum if the machine is used for 14 years. Hence the economic life of the machine is 14 years.");
disp("End of year     Op_cost     Main_cost    Op+Main     P/F,i,n     PW     Cummulative     Salvage     PW_S    TPW     A/P,i,n     AEM");
i=20;//in  per year
Cum=0;//initialising
Op_cost=40000;//in RS.
Main_cost=60000;//in Rs.
OpMain=Op_cost+Main_cost;//in Rs.
S=400000;//in Rs.
for n=1:15
    PF=1/((1+i/100)^n);
    PW=OpMain*PF;//in Rs.
    Cum=Cum+PW
    PW_S=PF*S;//in RS.
    TPW=500000+Cum-PW_S;//in Rs.
    AP=((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1);
    AEM=TPW*AP;//in RS
    disp("       "+string(n)+"        "+string(Op_cost)+"        "+string(Main_cost)+"        "+string(OpMain)+"    "+string(PF)+"     "+string(PW)+"        "+string(Cum)+"        "+string(S)+"        "+string(PW_S)+"        "+string(TPW)+"        "+string(AP)+"        "+string(AEM));
    Op_cost=Op_cost+5000;//in Rs.
    Main_cost=Main_cost+6000;//in Rs.
    S=S-50000;//in Rs.
end