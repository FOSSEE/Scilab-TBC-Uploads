//Example 7.1, Page Number 296
//Detector sensitivity
clc;

D=10**9 //in meter square root hertz per watt
l=2*(10**-6) //Wavelength in meter
A=25*(10**-6) //Area in meter square
db=10*(10**3) //Detection Bandwidth in hertz

//From equation 7.2
NEP=(sqrt(A*db))/D //NEP is the detector sensitivty in W

mprintf("The Sensitivty of the device at given wavelength is:%.0e W",NEP)
