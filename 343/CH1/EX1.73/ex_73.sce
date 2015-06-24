V=120;                     //Assigning values to parameters
R1=40;
R2=20;
R3=60;
Rth=((R1*R2)/(R1+R2))+R3; //Calculation of Thevenin Resistance
Rl=Rth;                  //For maximum power,load resistance should be equal to Thevenin resistance
I=V/(R1+R2);             //Calculation of Circuit Current
Vth=R2*I;                //Calculation of Thevenin Voltage
Pmax=(Vth*Vth)/(4*Rth);  //Calculation of Maximum Power
disp("Watts",Pmax,"Maximum power by Maximum Power transfer theorem");