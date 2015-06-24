clc;
clear;
a=3; //amplitude in Volts
Dev=4;// Deviation in kHz
fm=1;// modulating frequency in kHz

Dev_sen=Dev*10^(3)/a; //Deviation Sensitivity
B=Dev/fm; // Modulation Index

disp(Dev_sen,"Deviation Sensitivity(in kHz/V)");
disp(B,"Modulation Index");

//a)
a=5;
Dev_sen_1=a*Dev_sen;
B=Dev_sen_1/(fm*10^(3));

disp(Dev_sen_1,"Deviation Sensitivity for 5V (in Hz)");
disp(B,"Modulation index");


//b)
a=10;
fm=400;
Dev_sen_2=a*Dev_sen;
B=Dev_sen_2/fm;


disp(Dev_sen_2,"Deviation Sensitivity for 10V (in Hz)");
disp(B,"Modulation index");
