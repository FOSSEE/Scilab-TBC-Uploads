clear
//variable declaration
E=(2*100000)               //Young's modulus,N/mm^2
alpha=(0.000012)       //expansion coeffecient,/°c
L=(12)                     //length,m
t=(40-18)                  //temperature difference,°c

delta=alpha*t*L*1000          //free expansion of the rails,mm    
// Provide a minimum gap of 3.168 mm between the rails, so that temperature stresses do not develop
       
// a) If no expansion joint is provided, free expansion prevented is equal to 3.168 mm

//delta=(P*L)/(A*E) & p=P/A where p is stress, P,A is load,area 

p1=(delta*E)/(L*1000)     //stress developed , N/mm^2

printf("\n (a) p= %0.1f  	N/mm^2",p1)

//(b) If a gap of 1.5 mm is provided, free expansion prevented delta2 = 3.168 – 1.5 = 1.668 mm.

delta2=1.668       //mm
//delta2=(P*L)/(A*E) & p=P/A where p is stress, P,A is load,area 

p2=(delta2*E)/(L*1000)     //stress developed , N/mm^2

printf("\n (b) p= %0.1f  	N/mm^2",p2)

// If the stress developed is 20 N/mm2, then p = P/ A
p3=20                      //stress developed,N/mm^2
delta3=delta-(p3*L*1000/E)

printf("\n  (iii) delta= %0.3f  mm",delta3)
