clc;
clear;
fm=3; //Modulating Frequency in kHZ
Max_Dev=18; //MAximum Deviation in kHz
 
 B=Max_Dev/fm; //modulation index
 
 J=12;//from Bessel Table, for B=6
 Bw=fm*J*2*10^(3);
 
 disp(Bw,"The Bandwidth (in Hz) is") ;
