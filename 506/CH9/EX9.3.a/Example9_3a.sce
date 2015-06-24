clear;
clc;

//Caption:Variation of Ic in given Transistor
//Given Data at 25degree C
Re=4.7;//in K
Rb=7.75;//in K
B1=55;//beta at 25degree C
Ic1=1.5;//in mA
Ico1=1;
Vbe1=0.6;//in V

//Part a

Ico2=33000;//in nA
Vbe2=0.225;//in V
M1=1/(1+(Rb/(Re*B1)));//Stability Factor
disp(M1,'Stabitity Factor at 25deree C=');
B2=100;//at 175degree C
M2=1/(1+(Rb/(Re*B2)));//Stability Factor
disp(M2,'Stabitity Factor at 175degree C=');

if(M2>M1)
    M1=1;
    M2=1;
end

//Let k = (delta Ic)/(Ic1)
k=(1+(Rb/Re))*(M1*(Ico2-Ico1)*(10^-9)/Ic1*(10^-3))-(M1*(Vbe2-Vbe1)/(Ic1*Re))+(1+(Rb/Re))*(M2*(B2-B1)/(B2*B1));
deltaIc=k*Ic1;
disp('mA',deltaIc,'Change in Collector Current at 175degree C is =');

//Given Data at -65degree C
 Ico2=1.95*(10^-3);
 B2=25;
 Vbe2=0.78;
 
 M2=1/(1+(Rb/(Re*B2)));//Stability Factor
 disp(M2,'Stabitity Factor at -65degree C=');
 
//Let k = (delta Ic)/(Ic1)
k=(1+(Rb/Re))*(M1*(Ico2-Ico1)*(10^-9)/Ic1*(10^-3))-(M1*(Vbe2-Vbe1)/(Ic1*Re))+(1+(Rb/Re))*(M2*(B2-B1)/(B2*B1));
deltaIc=k*Ic1;
disp('mA',deltaIc,'Change in Collector Current at -65degree C is =')


//End