 
R= 13; //present activity,
Ro= 16; //activity of live wood
Thalf= 5760; //half life of radiocarbon, y
Lambda= 0.693/(Thalf); //decay constant, y^(-1)
t= (1/Lambda)*(log(Ro/R)); //age of sample, y
disp(t,"The age of the wooden sample, in years, is: ")
 
//Result
// The age of the wooden sample, in years, is:    
//    1725.8337 
