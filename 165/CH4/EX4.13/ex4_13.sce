//Example 4.13
clc;

Ra=45000;
Rb=5000;
S=20000;              //Given sentivity
V=50;                 //Voltage across given terminals
VRb=Rb*V/(Ra+Rb);     //Using Voltage divide between Ra Rb
                      //Also the true voltage across Rb
disp(VRb,'True voltage across Rb')

// Case I: For range of 5 V
R=5;                  //Range of meter 1
Rv=S*R;               //Voltmeter Resistence
Req=Rb*Rv/(Rb+Rv);    //R2 is parallel to meter
V1=V*Req/(Ra+Req);    //Voltage across the total combination
disp(V1,'Voltmeter with range 5 V')
Ev1=(VRb-V1)*100/VRb; //Error in voltmeter 1
disp(Ev1,' Error in voltmeter 1')

// Case II: For range of 10 V
R=10;                 //Range of meter 2
Rv=S*R;               //Voltmeter Resistence
Req=Rb*Rv/(Rb+Rv);    //R2 is parallel to meter
V2=V*Req/(Ra+Req);    //Voltage across the total combination
disp(V2,'Voltmeter with range 10 V')
Ev2=(VRb-V2)*100/VRb; //Error in voltmeter 2
disp(Ev2,' Error in voltmeter 2')

// Case III: For range of 30 V
R=30;                 //Range of meter 3
Rv=S*R;               //Voltmeter Resistence
Req=Rb*Rv/(Rb+Rv);    //R2 is parallel to meter
V3=V*Req/(Ra+Req);    //Voltage across the total combination
disp(V3,'Voltmeter with range 30 V')
Ev3=(VRb-V3)*100/VRb; //Error in voltmeter 3
disp(Ev3,' Error in voltmeter 3')