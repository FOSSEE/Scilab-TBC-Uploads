//Ex 7.3
clc;clear;close;
fc=500;//kHz(Free running frequuency)
fi=600;//kHz(Input signal frequuency)
BW=10;//kHz
out1=fi+fc;//kHz(Phase detector output)
out2=fi-fc;//kHz(Phase detector output)
disp(out2,out1,"Output of phase detector will be(kHz)");
disp("Both components are not lying in the passband(i.e. 10 kHz). Hence loop will not acquire lock.");
//fi+fc is calculated wrong in the book.
