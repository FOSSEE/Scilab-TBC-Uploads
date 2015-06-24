

//example 3.6
//calculate
//storage capcity of soil
//Water depth required to be applied
clc;
//Given
Fc=0.22;                                             //Field Capacity
wc=0.1;                                             //wilting coefficient
gammad=15;                                          //dry unit weigth of soil
gammaw=9.81;                                        //unit wiegth of water
d=0.7;                                              //root zone depth
w=0.14;                                            //falled moisture content
E=0.75;                                           //water application efficiency
SC=gammad*d*(Fc-wc)*100/gammaw;
D=gammad*d*(Fc-w)*1000/gammaw;
FIR=D/E;                                         //Field irrigation requirement
SC=round(SC*10)/10;
D=round(D);
FIR=round(FIR)+1;
mprintf("Maximum storage capacity of soil=%f cm.",SC);
mprintf("\nWater depth required to be applied=%f mm",D);
mprintf("\nField Irrigation Requirement=%f mm",FIR);
