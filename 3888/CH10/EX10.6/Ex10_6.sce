//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 10.6
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


r=0.025;                                                                          //Conductor radius in m
Dac1=4;                                                                           //Distance between two conductors a & c1 in m
Dac=6;                                                                            //Distance between two conductors a & c in m
Dbb1=10;                                                                          //Distance between two conductors b & b1 in m
Dab=(((Dbb1-Dac1)/2)^2+(Dac/2)^2)^(1/2);                                          //Distance between two conductors a & b in m
Daa1=(((Dac1)^2)+((Dac)^2))^(1/2);                                                //Distance between two conductors a & a1 in m
Dbc1=(((Dbb1-Dac1)/2)^2+((Dac1)+((Dbb1-Dac1)/2))^2)^(1/2);                        //Distance between two conductors b & c1 in m
GMD1=nthroot((Dab*Dac*Dbc1*Dac1),4);                                              //Mutual GMD of phase a position 1 in m
GMR1=(0.7788*r*Daa1)^(1/2);                                                       //Self GMR of phase a position 1 in m
GMD2=nthroot((Dab*Dab*Dbc1*Dbc1),4);                                              //Mutual GMD of phase a position 2 in m
GMR2=(0.7788*r*Dbb1)^(1/2);                                                       //Self GMR of phase a position 2 in m
GMD3=GMD1;                                                                        //Mutual GMD of phase a position 3 in m
GMR3=GMR1;                                                                        //Self GMR of phase a position 3 in m
Dm=nthroot((GMD1*GMD2*GMD3),3);                                                   //Equivalent mutual GMD in m
Ds=nthroot((GMR1*GMR2*GMR3),3);                                                   //Equivalent self GMR in m
LA=(2/10)*(log(Dm/Ds));                                                           //Inductance of phase a in mH/km


printf("\nThe inductance per kilometre of a double circuit is %.3f mH/km",LA);

