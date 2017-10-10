// Problem 5.7,Page no.126

clc;clear;
close;

d=12 //m //depth of mast
D_1=20 //cm //diameter at the base 
D_2=10 //cm //diameter at the top

//Calculations

//Consider section at a distance x cm below top of mast and y be the diameter at this section

//triangle OAB and ODC are similar,we get
//2*AB=x*120**-1
//EB=y=10+x*120**-1
//after simplifying we get, x=120*(y-10)

//Z=%pi*64**-1*y**4)*(y*32**-1)**-1 //Section modulus
//After simplifying we get
//Z=(%pi*y**3)*(32)**-1

//M=120*P(y-10) //bending moment at that section

//From flexural formula we get,
//sigma=M*Z**-1
//After substituting and simplifying above equation we get,
//sigma=3840*P*%pi**-1*(1*y**2-1-10*y**3-1)

//To find max value of sigma taking derivative of above equation we get
y=15 //cm

//Now substituting value of y in all equations with variable y
x=120*(y-10)
//sigma=3840*P*(15-10)*(%pi*15**3)**-1 

//After implifying above equation we get

P=(3500*%pi*15**3)*(3840*5)**-1 //N //Magnitude of load causing failure

//Result
printf("The Magnitude of Load is %.2f N",P)
