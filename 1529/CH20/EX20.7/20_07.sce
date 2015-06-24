//Chapter 20, Problem 7
clc;
R=3;                        //resistance of coil
Xl=4;                       //inductive reactance
Vl=415;                     //3 phase supply
Vp1=415;                    //line voltage
Vp=Vl/sqrt(3);              //phase voltage for star connection
Zp=sqrt(R^2+Xl^2);          //impedance per phase
Ip=Vp/Zp;                   //phase current
Ip1=Vp1/Zp;                 //phase voltage
Il1=Ip1*sqrt(3);            //line current
printf("(i) For star connection\n    (a) Line voltage = %d V\n    Phase voltage = %f V\n\n",Vl,Vp);
printf("     (b) Line current = %d V\n    Phase current = %f V\n\n\n",Ip,Ip);
printf("(ii) For delta connection\n     (a) Line voltage = %d V\n    Phase voltage = %d V\n\n",Vp1,Vp1);
printf("     (b) Line current = %f V\n    Phase current = %f V\n",Il1,Ip1);
