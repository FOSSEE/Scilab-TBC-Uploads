// Exa 10.1
clc;
clear;
close;
// Given data
FullScale= 25;// in volt

VR= 5;// voltmeter reading in volt
Error= -0.25;// in volt
Error_Reading= Error/VR*100;// % of reading
disp(Error_Reading,"Error percentage of reading");
Error_FullScale= Error/FullScale*100;// % of full scale
disp(Error_FullScale,"Error percentage of full scale")

VR= 10;// voltmeter reading in volt
Error= 0.25;// in volt
Error_Reading= Error/VR*100;// % of reading
disp(Error_Reading,"Error percentage of reading");
Error_FullScale= Error/FullScale*100;// % of full scale
disp(Error_FullScale,"Error percentage of full scale")

VR= 20;// voltmeter reading in volt
Error= -0.4;// in volt
Error_Reading= Error/VR*100;// % of reading
disp(Error_Reading,"Error percentage of reading");
Error_FullScale= Error/FullScale*100;// % of full scale
disp(Error_FullScale,"Error percentage of full scale")
