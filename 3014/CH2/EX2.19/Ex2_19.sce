clc 
//given that
del_t = 1e-8 // lifetime of exited state in  sec
h = 6.63e-34 // Plank constant
printf("Example 2.19")
h_bar = h / (2*%pi) // constant
del_nu = h_bar/(2*del_t*h) // calculation of uncertainty in frequency
printf("\n Minimum error in measurement of \n frequency of photon is %e per second.\n\n\n",del_nu)
// Answer in book is 8e6 per second
