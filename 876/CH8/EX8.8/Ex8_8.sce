//caption:Find frequency of horizontal signal
//Ex8.8
clc
clear
close
Y=2//number of Y peaks
X=1//number of X peaks
fv=2//vertical signal frequency(in kilo Hz)
fh=(X/Y)*fv
disp(fh,'frequency of horizontal signal(in kilo Hz)=')