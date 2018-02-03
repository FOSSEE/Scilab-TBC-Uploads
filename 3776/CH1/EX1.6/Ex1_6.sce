clear
//Given
mass = 5       //Kg
frequency = 10 //Hz
stress_allow = 200 //MPa
R = 0.5        //m

//calculations
//
w = 2*%pi*frequency //rad/sec
a = (w**2)*R       //sq.m/sec
F = mass*a         //N
A_req = F/stress_allow  //sq.mm , The required area for allowing stress
printf("\n The required size of rod is: %0.2f sq.mm",A_req)
