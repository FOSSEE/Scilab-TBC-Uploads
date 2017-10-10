//example 10.6(b)//
clc
//clears the screen//
clear
//clears all variables//
fs=0.02*5000/100;
//full scale error//
disp(fs, 'full scale error (in mV) = ')
e=19.607+fs;
//total possible error//
disp(e, 'total possible error (in mV) = ')