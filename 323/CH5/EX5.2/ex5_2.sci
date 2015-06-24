//Chapter5,Ex5.2,Pg5.5
clc;
//Given data: Flux required=4.13mWb,V1=110V f=50,
N1=110/(4.44*50*0.001*4.13) //No. of turns= Voltage of operation/(Flux required*4.44*frequency of input signal)
printf("\n No. of turns=%.0f turns \n",N1)
