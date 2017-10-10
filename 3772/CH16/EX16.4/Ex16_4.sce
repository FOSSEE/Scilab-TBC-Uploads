// Problem 16.4,Page no.368

clc;clear;
close;

t=18 //mm //thickness of plates
sigma_t=100 //MPa //Tensile stress //Notification has been changed
sigma_s=70 //MPa //Shearing stress //Notification has been changed

//Calculations

d=6*t**0.5 //mm //Diameter of rivet //Answer is in correct in textbook
s=%pi*4**-1*d**2*10**-6*sigma_s*10**6 //N //Strength of one rivet in single shear //Answer is in correct in textbook

//Consider strip of joint equal to %pitch p

//S_1=(p-d)*t*10**-3*sigma_t*10**6 //Strength of plate against tearing along 1-1
//After substituting values and further simplifying we get
//S_1=1800*p-45900        (Equation 1)
 
//S_2=(p-d)*t*10**-3*sigma_t*10**6+s //Strength of plate against tearing along 1-1
//After substituting values and further simplifying we get
//S_1=1800*p-56050.64     (Equation 2)

//But the value of Equation 2 is smaller than Equation 1

//Strength of rivets in single shear is
S=4*s

//Equating Equation 2 to shearing value
//1800*p-56050.64=S
p=(S+56050.64)*18000**-1 //cm //%pitch of rivet

//Result
printf("Diameter of rivets is %.2f",d);printf(" mm")
printf("\n pitch of rivet is %.2f",p);printf(" cm")
