 
Thalf= 3.82; //half-life in days, d
Lambda= 0.693/Thalf; //decay constant
p= 0.6; // 60.0 percent of sample
No= poly(0,'No'); //Number of undecayed nuclei, at time t=0
N= (1-p)*No; //Number of undecayed nuclei, at time t
k= 1-p; //ratio of N to No
t= (1/Lambda)*(log(k)); //decay time in days, d
t= t*(-1); 

disp(t,"The decay time for Radon, in d, is: ")

//Result
// The decay time for Radon, in d, is:    
//  5.0508378  