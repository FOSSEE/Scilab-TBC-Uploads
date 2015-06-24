clc
//Chapter 3:Network noise and intermodulation distortion
//example 3.14 page no 97
//given
PI=20//intercept point in dBm
Nf=-123//noise floor in dBm
DR=2/3*(PI-Nf)//dynamic range (by the rules of logarithms as value are already given in dBm)
mprintf('the dynamic range is %f dB',DR)
