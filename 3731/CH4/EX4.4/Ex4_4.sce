//Chapter 4: Selection of Motor Power Rating
//Example 4
clc;

//Variable Initialization
Cr=60      //Heating time constant in minutes
Cs=90      //Cooling time constant in minutes
P=20       //Full load in kW

//Solution

//Part-i
a=0  
tr=10    //Time  to deliver in minutes
x=exp(-tr/Cr)
K=sqrt(1/(1-x))
P1=K*P  //Permitted load

//Part-ii
a=0 
tr=10   //Intermittent load period allowed in minutes
ts=10   //Shutdown time period in minutes
x=exp(-(tr/Cr+ts/Cs))
y=exp(-tr/Cr)
K=sqrt((1-x)/(1-y))
P2=K*P  //Permitted load


mprintf("\ni)Required permitted load:%d kW",P1)
mprintf("\nii)Required permitted load:%.2f kW",P2)
