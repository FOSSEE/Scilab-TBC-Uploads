//Refer to Example 12.3
 
Ro= 155; //initial activity, Ci
Lambda= 2.11*(10^(-6)); //decay constant, s^(-1)
t= 7; //days
t= t*86400; //converting to s
R= Ro*((%e)^(-(Lambda*t))); //final activity, Ci
disp(R,"The activity after one week, in Ci, is: ")
 
//Result
// The activity after one week, in Ci, is:    
//    43.262972  