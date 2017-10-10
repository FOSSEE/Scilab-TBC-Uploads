//Chapter 4: Selection of Motor Power Rating
//Example 5
clc;

//Variable Initialization
P=100     //Half hour rating of the motor
Cr=80     //Heating time constant in minutes
n=0.7     //Maximum efficiency at full load

//Solution

Pcu=n**2   //Coppper loss
a=Pcu
K=sqrt((1+a)/(1-%e**(-30/Cr))-a)  
Pco=P/K     
mprintf("Therefore the continuous rating is:%.2f kW",Pco)
