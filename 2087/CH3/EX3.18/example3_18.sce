

//example 3.18
//Calculate 
//consumptive use
//consumptive irrigatin requirement
//field irrigatio reqiurement
clc;
//Given
eita=0.7;        //water application efficiency
k=0.75;          //crop factor
T=[19 16 12.5 13];   //given values of temperature
p=[7.19 7.15 7.30 7.03];  //daytime hours of the year
RD=1.2;              //rainfall in december
RJ=0.8;              //rainfall in january
for i=1:4
    f(i)=p(i)*(1.8*T(i)+32)/40;
end
s=0;
for i=1:4
    s=s+f(i);
end
C=k*s;
R=RD+RJ;
CIR=C-R;
FIR=CIR/eita;
C=round(10*C)/10;
CIR=round(CIR*10)/10;
FIR=round(FIR*10)/10;
mprintf("Consumptive use=%f cm.",C);
mprintf("\nconsumptive irrigatin requirement=%f cm.",CIR);
mprintf("\nfield irrigatio reqiurement=%f cm.",FIR);

