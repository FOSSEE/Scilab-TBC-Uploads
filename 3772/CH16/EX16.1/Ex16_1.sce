// Problem 16.1,Page no.366

clc;clear;
close;

t=1 //cm //thickness of plates
sigma_t=150 //MPa //Working stress
sigma_c=212.5 //MPa //crushing stress
sigma_s=94.5 //MPa //shearing stress

//Calculation (Part-1)

//P_s=%pi*4**-1*d**2*sigma_s //N //Shearing strength
//After substituting values and further simplifying we get
//P_s=%pi*4**-1*d**2*94.5*10**6 //N 

//P_c=d*t*sigma_c //N //crushing strength
//After substituting values and further simplifying we get
//P_c=d*1*10**-2*212.5*10**6 //N 

//P_t=(p-d)*t*sigma_t //N //Strength of plate in tearing
//After substituting values and further simplifying we get
//P_t=(p-d)*1*10**-2*150*10**6

//Now comparing strengths 
//P_s=P_c 
//%pi*4**-1*d**2*94.5*10**6=d*1*10**-2*212.5*10**6
d=1*10**-2*212.5*10**6*(%pi*4**-1*94.5*10**6)**-1 //m //Diameter of rivet

//Now comparing strengths 
//P_t=P_c
//(p-d)*1*10**-2*150*10**6=d*1*10**-2*212.5*10**6
//Afte further simplifying equation we get
//(p-d)=1.4166*d
p=(1.4166*d+d) //m //%pitch length of rivet

P=p*sigma_t*10**6*t*10**-2 //N //Strength of solid plate //Answer for strength of solid plate is incorrect in textbook 

rho=(p-d)*p**-1*100 //Efficiency of the joint //Notification has been changed

//Calculation (Part-2)

//P_s=2*%pi*4**-1*d**2*sigma_s //N //Shearing strength
//After substituting values and further simplifying we get
//P_s=2*%pi*4**-1*d**2*94.5*10**6 //N 

//P_c=2*d*t*sigma_c //N //crushing strength
//After substituting values and further simplifying we get
//P_c=2*d*1*10**-2*212.5*10**6 //N 

//P_t=(p-d)*t*sigma_t //N //Strength of plate in tearing
//After substituting values and further simplifying we get
//P_t=(p-d)*1*10**-2*150*10**6

//Now comparing strengths 
//P_s=P_c 
//2*%pi*4**-1*d**2*94.5*10**6=2*d*1*10**-2*212.5*10**6
d=1*10**-2*212.5*10**6*(%pi*4**-1*94.5*10**6)**-1 //m //Diameter of rivet

//Now comparing strengths 
//P_t=P_c
//(p-d)*1*10**-2*150*10**6=2*d*1*10**-2*212.5*10**6
//Afte further simplifying equation we get
//(p-d)=2.833*d
p_1=(2.833*d+d) //m //%pitch length of rivets in shearing strength of plate //Notification for %pitch length has been changed

rho_2=(p_1-d)*p_1**-1*100 //Efficiency of the joint //Notification has been changed

//Result 
printf("The Efficiency of joint in single rivet is %.2f %%",rho)
printf("\n The Efficiency of joint in double rivet is %.2f %%",rho_2)
