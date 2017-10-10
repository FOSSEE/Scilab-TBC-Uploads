//To calculate the current through each resistor,the voltage across each resistor and the voltage at each node of the circuit.
clc;
R_1=25
R_2=10
R_3=15
R_4=50
R_5=25
R_6=100
R_7=500
R_8=125
//Given resistances in kilo-ohm.
Req_123=R_1+R_2+R_3                                                       //Equivalent of(R_1,R_2,R_3)
Req_1234=(Req_123*R_4)/(Req_123+R_4)                                        //Equivalent of(R_1,R_2,R_3,R_4)
Req_678=(R_6*R_7*R_8)/((R_7*R_8)+(R_6*R_8)+(R_6*R_7))                          //Equivalent of(R_6,R_7,R_8)
Req=Req_1234+R_5+Req_678
disp(Req,'Equivalent resistance in kilo-ohm')
V=100                   //Volts
i=V/Req                 //mA
i_1=i/2                   //Current through R_1,R_2 andR_3(mA)
i_2=i_1                  //Current through R_4(mA)
V_R1=R_1*i_1                //Volts
V_R2=R_2*i_1                       //Volts
V_R3=R_3*i_1                      //Volts
V_R4=R_4*i_2                       //Volts
V_R5=R_5*i                 //Volts
V_R6=Req_678*i                            //Volts
V_R7=V_R6                                  //Volts
V_R8=V_R6                                   //Volts
i_3=V_R6/(100)                    //Current through R_6(mA)
i_4=V_R7/(500)                    //Current through R_7(mA)
i_5=V_R8/(125)                    //Current through R_8(mA)
V_a=V
V_b=V_a-V_R1
V_c=V_b-V_R2
V_d=V_c-V_R3
V_e=V_d-V_R5








