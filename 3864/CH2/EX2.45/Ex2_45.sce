clear
//
//

//Initilization of Variables

//Bar-A
d1=30 //mm //Diameter of bar1
L=600 //mm //length of bar1

//Bar-B
d2=30 //mm //Diameter of bar2
d3=20 //mm //Diameter of bar2
L2=600 //mm //length of bar2

//Calculations

//Area of bar-A
A1=%pi*4**-1*d1**2

//Area of bar-B
A2=%pi*4**-1*d2**2
A3=%pi*4**-1*d3**2

//let SE be the Strain Energy
//Strain Energy stored in Bar-A
//SE=p**2*(2*E)**-1*V
//After substituting values and simolifying further we get
//SE=P**2*E**-1*0.4244

//Strain Energy stored in Bar-B
//SE2=p1**2*V1*(2*E)**-1+p2**2*V2*(2*E)**-1
//After substituting values and simolifying further we get
//SE2=0.6897*P**2*E**-1

//Let X be the ratio of SE in Bar-B and SE in Bar-A
X=0.6897*0.4244**-1

//Part-2

//When Max stress is produced is same:Let p be the max stress produced

//Stress in bar A is p throughout 
//In bar B:stress in 20mm dia.portion=p2=p

//Stress in 30 mm dia.portion
//p1=P*A2*A3**-1
//After substituting values and simolifying further we get
//p1=4*9**-1*p

//Strain Energy in bar A
//SE_1=p**2*(2*E)**-1*A1*L1
//After substituting values and simolifying further we get
//SE_1=67500*p**2*%pi*E**-1

//Strain Energy in bar B
//SE_2=p1**2*V1*(2*E)**-1+p2**2*V2*(2*E)**-1
//After substituting values and simolifying further we get
//SE_2=21666.67*%pi*p**2*E**-1

//Let Y be the Ratio of SE in bar B and SE in bar A
Y=21666.67*67500**-1

//result
printf("\n Gradually applied Load is %0.2f  ",X)
printf("\n Gradually applied Load is %0.2f  ",Y)
