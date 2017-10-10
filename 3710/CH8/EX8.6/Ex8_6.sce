//Example 8.6, Page Number 380
//Intermodal Dispersion in step index fibers
clc;

n1=1.48//refractive index 
n2=1.46//refractive index
L=1*(10**3) //Length of Fiber in kilometer
c=3*(10**8) //Speed of Light in meters per second

//Using equation 8.24
td=((L*n1)/(c*n2))*(n1-n2) //t is the time difference due tp intermodal dispersion
disp(td,"The Time difference due to Intermodal dispersion in s is:")
