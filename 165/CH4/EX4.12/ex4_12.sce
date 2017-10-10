//Example 4.12
clc;

Ra=25000;
Rb=5000;
V=30;                 //Voltage across given terminals
VRb=Rb*V/(Ra+Rb);     //Using Voltage divider between Ra Rb
                      //Also the true voltage across Rb
disp(VRb,'True voltage across Rb')

// Case I: Given is sensitivity of 1000
S1=1000;              //Given sentivity
R=10;                 //Range of meter 1
Rv=S1*R;              //Voltmeter Resistence
Req=Rb*Rv/(Rb+Rv);    //R2 is parallel to meter
V1=V*Req/(Ra+Req);    //Voltage across the total combination
disp(V1,'Voltmeter with Sensitivity of 1000 indicates ')
Ev1=(VRb-V1)*100/VRb; //Error in voltmeter 1

// Case II: Given is sensitivity of 20000
S2=20000;             //Given sentivity
R=10;                 //Range of meter 2
Rv=S2*R;              //Voltmeter Resistence
Req=Rb*Rv/(Rb+Rv);    //R2 is parallel to meter
V2=V*Req/(Ra+Req);    //Voltage across the total combination
disp(V2,'Voltmeter with Sensitivity of 20000 indicates ')
Ev2=(VRb-V2)*100/VRb; //Error in voltmeter 2

disp(Ev1,' Error in voltmeter 1')
disp(Ev2,' Error in voltmeter 2')