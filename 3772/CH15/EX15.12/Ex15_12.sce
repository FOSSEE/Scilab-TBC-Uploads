// Problem no 15.12,Page no.359

clc;clear;
close;

D=0.038 //m //External Diameter
d=0.035 //m //Internal Diameter
d_1=0.0008 //m //Steel wire diameter
p=2*10**6 //pa //Pa //Internal Pressure
sigma_t_1=7*10**6 //Pa //Circumferential stress
//E_s=1.6*E_s
m=0.3

//Calculation

t=(D-d)*2**-1 //m Thickness 

//sigma_t*2*t=%pi*d*2**-1*sigma_w
//From Above equation we get

//sigma_t=0.419*sigma_w   (Equation 1)

sigma_w_1=(p*d-sigma_t_1*2*t)*(2*d_1**-1*%pi*4**-1*d_1**2)**-1 //stress in wire
sigma_l=p*d*(4*t)**-1 //Longitudinal stress in tube

//Now Equating equations of strain in tube and wire we get
sigma_w=-(1.6*(sigma_t_1-sigma_l*m)-sigma_w_1)*1.67**-1*10**-6

//Result
printf("The Tension at which wire must have been wound is %.2f",sigma_w);printf(" MPa")
