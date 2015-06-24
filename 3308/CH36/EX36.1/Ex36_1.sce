
clc 
// Given that
T=2.6//in mm wall thickness
USL=3.2//in mm upper specification limit 
LSL=2//in mm lower specification limit 
Y=2.6//in mm mean
s=0.2//in mm standard deviation
C1=10//in dollar shipping included cost
C2=50000//in dollars improvement cost
n=10000//sections of tube per month
// Sample Problem on page no. 978

printf("\n # Production of Polymer Tubing # \n")

k=C1/(USL-T)^2
LossCost=k*(((Y-T)^2)+(s^2))
//after improvement the variation is half
s1=0.2/2
LossCost1=k*(((Y-T)^2)+(s1^2))
printf("\n\n Taguchi Loss Function = $ %f per unit ",LossCost1)
//answer in the book is approximated to $0.28 per unit 

savings=(LossCost-LossCost1)*n
paybackperiod=C2/savings
printf("\n\n Payback Period = %f months",paybackperiod)
//answer in the book is 6.02 months due to approximation savings 





