//Problem 44.05: The voltages at the input and at the output of a transmission line properly terminated in its characteristic impedance are 8.0 V and 2.0 V rms respectively. Determine the output voltage if the length of the line is doubled. 

//initializing the variables:
Vs = 8; // in Volts
VR = 2; // in Volts
x = 2; 

//calculation:
// receiving end voltage VR = Vs*e^(-nr)
//e^-nr = p
p = VR/Vs
//If the line is doubled in length, then
VR = Vs*(p)^2

printf("\n\n Result \n\n")
printf("\n Receiving end voltage If the line is doubled in length, VR is %.2f +(%.2f)i V",real(VR), imag(VR))
