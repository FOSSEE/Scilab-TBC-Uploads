//Example 4.11
clc;

R1=10000;
R2=10000;
V=100;                //Voltage across given terminals
VR2=R2*V/(R1+R2);     //Using Voltage divider between R1 R2
                      //Also the true voltage across R2

// Case I: Given is sensitivity of 1000
S1=1000;              //Given sentivity
Rv=S1*VR2;            //Voltmeter Resistence
Req=R2*Rv/(R2+Rv);    //R2 is parallel to meter
V1=V*Req/(R1+Req);    //Voltage across the total combination
disp(V1,'Voltmeter with Sensitivity of 1000 indicates ')

// Case II: Given is sensitivity of 20000
S2=20000;             //Given sentivity
Rv=S2*VR2;            //Voltmeter Resistence
Req=R2*Rv/(R2+Rv);    //R2 is parallel to meter
V2=V*Req/(R1+Req);    //Voltage across the total combination
disp(V2,'Voltmeter with Sensitivity of 20000 indicates ')

if (V1>V2) then
    disp('Voltmeter with Sensitivity of 1000 is better')
else
    disp('Voltmeter with Sensitivity of 20000 is better')
end