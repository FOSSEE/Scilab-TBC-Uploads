//chapter 12
// example 12.8
//page 426
n=12;// 12-bit ADC
Vi=4.095;//input voltage
Qe=Vi/((2^n-1)*2);// quqntizing error
disp(Qe)