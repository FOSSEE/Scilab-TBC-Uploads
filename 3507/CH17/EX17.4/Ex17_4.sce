//chapter17
//example17.4
//page381

R=1d6 // ohm
C=68d-12 // F

fo=1/(2*%pi*R*C*(6)^0.5)
printf("frequency of oscillations = %.3f Hz",fo)

// in book the answer given is 954 Hz but the accurate answer is 955.511 Hz
