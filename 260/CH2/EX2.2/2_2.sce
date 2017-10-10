//Eg-2.2
//pg-51

clear
clc
close()

truevalue=.69;
operatingvalue=0.63;
err=truevalue-operatingvalue;
perrelerr=err/truevalue*100;
disp("error and pecentage relative error")
disp(err)
disp(perrelerr)