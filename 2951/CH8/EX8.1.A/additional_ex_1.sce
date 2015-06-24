clc;
clear;
p1=1/8;
p2=1/8;
p3=5/8;
p4=1/8; //Quantization Levels
//B is the Bandwidth of the signal

H=p1*log2(1/p1)+p2*log2(1/p2)+p3*log2(1/p3)+p4*log2(1/p4);

disp(H,"The average Information (in bits/message)=");
disp("The Information Rate R=rH  =2*B(1.55) =3.1B bits/s");
