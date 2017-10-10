// Problem no 15.11,Page no.358

clc;
clear;
close;


d=0.3 //m //Diameter
D=0.003 //m //Diameter of steel wire
t=0.006 //m //thickness
sigma_w=8*10**6 //Pa //Stress
p=1*10**6 //Pa //Internal pressure
E_s=200*10**9 //Pa //Modulus of Elasticity for steel
E_c=100*10**9 //Pa //Modulus of Elasticity for cast iron
m=1*0.3**-1

//Calculations

sigma_p=(sigma_w*%pi*2**-1*d)*(2*t)**-1 //compressive hoop stress
sigma_l=p*d*(4*t)**-1 //Longitudinal stress

//when internal presure is apllied Let sigma_w_1=Tensile in wire and sigma_p_1=tensile hoop in wire
//sigma_p_1*2*t+sigma_w_1*2*d**-1*%pi*4**-1*d**2=p*D

//After substituting values and further simplifying we get
//1.2*sigma_p_1+0.471*sigma_w_1=3000    Equation 1

//1*E_c**-1(sigma_p_1-sigma_1*m**-1+sigma_p)=1*E_s**-1(sigma_w_1-sigma_w)

//After substituting values and further simplifying we get
//sigma_p_1-0.5*sigma_w_1=1.36*10**6    
//sigma_p_1=0.5*sigma_w_1-3.39*10**6   Equation 2

//From Equation 2 substituting value of sigma_p_1 in Equation 1


sigma_w_1=(40.68*10**3+0.3*10**6)*(10.71238*10**-3)**-1
sigma_p_1=0.5*sigma_w_1-3.39*10**6

//Let X=sigma_p_1 and Y=sigma_w_1
X=sigma_p_1*10**-6 //MPa //Stresses in %pipe
Y=sigma_w_1*10**-6 //MPa //Stresses in wire

//Result
printf("Stress in the pipe is %.2f",X);printf(" MN/m**2")
printf("\n Stress in the wire is %.2f",Y);printf(" MN/m**2")
