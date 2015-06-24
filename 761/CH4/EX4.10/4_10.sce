clc;
//page no 163
//prob no. 4.10
//Refer the fig. 4.19
// We know this transmitter is designed for voice frequencies,so we have to use trial and error method to produce a carrier null for a deviation of 5kHz
mf=2.4;// starting with the first null for mf=2.4
dev=5;//in kHz
fm=dev/mf;
if (0.3<=fm & 3>=fm) then
    disp('kHz',fm,'The freq is widin the acceptable range');
else 
    mf=5.5;
    fm=dev/mf;
    disp('kHz',fm,'The freq is widin the acceptable range');
end
// for this calculated fm, set the function generator to the value of fm so that the deviation is 5kHz