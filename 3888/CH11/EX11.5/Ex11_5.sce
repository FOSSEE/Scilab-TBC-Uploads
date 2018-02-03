//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 11.5
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


V=400;                                                           //Supply voltage in kV
Load=750;                                                        //Load in MVA
A=0.85;                                                          //Loss less three phase line constant
B=%i*150;                                                        //Loss less three phase line constant
C=%i*0.001;                                                      //Loss less three phase line constant
D=A;                                                             //Loss less three phase line constan
Vr=V/3^(1/2);                                                    //Receiving end voltage in kV
Ir=Load*10^(3)/(3^(1/2)*V);                                      //Receiving end current in A
Vs=(A*Vr*10^(3)+B*Ir*(0.8-%i*0.6))*10^(-3);                      //Sending end voltage in kV
Is=C*Vr*10^(3)+A*Ir*(0.8-%i*0.6);                                //Sending end current in A
vtg_reg=(((abs(Vs)/abs(A))-Vr)/Vr)*100;                          //Regulation of the line
ABCD=[1 -50*%i;0 1]*[0.85 50*%i;0.001*%i 0.85]*[1 -50*%i;0 1];   //Matrix of compensated line
Vs1=ABCD(1,1)*Vr+ABCD(1,2)*(abs(Ir)/1000)*(0.8-%i*0.6);          //Sending end voltage of compensated line in kV
Is1=ABCD(2,1)*Vr*10^(3)+ABCD(2,2)*abs(Ir)*(0.8-%i*0.6);          //Sending end current of compensated line in A
vtg_reg2=(((abs(Vs1)/ABCD(1,1))-Vr)/Vr)*100;                     //Regulation of the of compensated line


printf("\nPhase voltage is % f kV",Vr);
disp(ABCD,'Series compensation parameters is ');
printf("\nRegulation of the uncompensated line is %.1f",vtg_reg);
printf("\nRegulation of the compensated line is %.2f",vtg_reg2);
                                                                   //variation present in result due to Wrong substitution of matrix ABCD 

