clear;
clc;

//Caption: To design a self bias circuit

//Given Data at 25degree C
B1=150;//beta
Ico1=50;//in nA

//Given Data at 65degree C
B2=1200;//beta
Ico2=3;//in micro A

Vbe=0.65;//in mV
Vcc=20;//in V
M=1;
//Assumption: Each factor Ico,B, and Vbe cuses the same percentge change(5%)

//Let Rb/Re=k
//(1+k)*((1200-150)/(1200*150))=0.05

k=((0.05)*((1200*150)/(1200-150)))-1;
disp(k,'Rb/Re=');
//Let us check our assumption

if(M>(1/(1+(k/B1))))
    M=1;
end

//(1+(Rb/Re))*((Ico2-Ico1)/Ic1)=0.05   Since Ico2>>Ico1, we consider only Ico2

Ic1=((1+k)*Ico2)/(0.05*1000);
disp('mA',Ic1,'Ic1=');

//Vbe changes 2.5mV/degree
DVbe=2.5*40;
//Total increment
dVbe=2*DVbe*(10^-3);

//Let l=(Ic1*Re)
l=dVbe/0.05;

Re=l/Ic1;
disp(Re,'Re=');
Rb=k*Re;
disp(Rb,'Rb=');

B=(B1+B2)/2;//beta
V=((Ic1/B)*Rb)+(Vbe)+(((Ic1/B)+Ic1)*Re);
disp('Volts',V,'V=');
R1=(Rb*Vcc)/V;
R2=(R1*V)/(Vcc-V);

disp('ohm',R1,'R1=');
disp('ohm',R2,'R2=');

//end