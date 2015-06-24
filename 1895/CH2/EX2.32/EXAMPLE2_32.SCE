//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.31(PAGENO 119)");

//given
//the product signal is given by
//v(t) = s(t) * cos(2*%pi*t +phi) = x(t) *cos(2*%pi*f_c*t)*cos(2*%pi*f_c*t +phi)
//v(t) = x(t) *(cos(4*%pi*f_c*t +phi) +cos(phi))/2 = (x(t)/2)*cos(4*%pi*f_c*t +phi)+(x(t)/2)*cos(phi)
//the low pass filter will reject the first term. The maximum allowable value of phase angle(phi) can be found as under:
printf("\n\ncos(phi_max) = ((x(t)/2)*cos(phi))/max((x(t)/2)*cos(phi))");
phi_max = acosd(.95);
printf("\n\nphi_max = %.2f",phi_max);
printf("\n\nIn order to recover x(t) from v(t) using filter method, it is essential that the lowest frequency contained in the first term of v(t) must be greater than the highest frequency contained in the second term,i.e,")
printf("\n2f_c -10KHz > 10KHz");
printf("\nf_c >10KHz");
printf("\nHence, the minimum value of f_c will be");
printf("\nf_c = 10KHz")
