//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 10.10
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


r=0.05;                                            //Radius of the conductor in m
bc=5;                                              //Distance between b & c in m
bb1=3*bc;                                          //Distance between b & b1 in m
aa1=2*bc;                                          //Distance between a & a1 in in m
ab=(((bb1-aa1)/2)^(2)+bc^(2))^(1/2);
ab1=((aa1+((bb1-aa1)/2))^(2)+bc^(2))^(1/2);
ac1=((bc*2-((bb1-aa1)/2))^(2)+bc^(2))^(1/2);
Dab=nthroot(ab*ab1*ab1*ab,4);
Dbc=nthroot(bc*aa1*aa1*bc,4);
Dca=nthroot(ab*ac1*ab*ac1,4);
Deq=nthroot(Dab*Dbc*Dca,3);
Dsa=sqrt(aa1*0.7788*r);
Dsb=sqrt(bb1*0.7788*r);
Dsc=sqrt(bc*0.7788*r);
Ds=nthroot(Dsa*Dsb*Dsc,3);
L=(2*10^(-7)*log(Deq/Ds))*10^(6);                  //Inductance of double circuit in mH/km/phase
Dsa1=sqrt(aa1*r);                                  //GMR for capacitance
Dsb1=sqrt(bb1*r);                                  //GMR for capacitance
Dsc1=sqrt(bc*r);                                   //GMR for capacitance
Ds1=nthroot(Dsa1*Dsb1*Dsc1,3);                     //Equivalent GMR for capacitance
C=(2*%pi*(10^(-9)/(36*%pi)))/log(Deq/Ds1);         //Capacitance of double circuit in nF/km/phase


printf("\nInductance of the line is %.3f mH/km/phase",L);
printf("\nCapacitance of the line is %.2f nF/km/phase",C/10^(-12));
                                                                //Variation present in result due to wrong calculation of Ds1 value

