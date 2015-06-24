 
Thalf= 3.82; //half-life in days, d
Lambda= 0.693/(Thalf*86400); //decay constant, s^(-1)
Wradon= 1.00; //weight of sample, mg
MRadon= 222; //atomic mass of sample, u
N= Wradon*(10^(-6))/(MRadon*(1.66*(10^(-27)))); //number of atoms
R= Lambda*N; //decays/sec
disp(R,"The activity of the sample, in decays/sec, is: ")
 
//Result
// The activity of the sample, in decays/sec, is:    
//    5.698D+12  