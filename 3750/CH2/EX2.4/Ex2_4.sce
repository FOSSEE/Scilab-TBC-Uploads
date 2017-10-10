//Strength Of Material By G.H.Ryder
//Chapter 2
//Example 4
//To Calculate load among rivets
clc();

//Initialization of Variables
P=10; //load carried by column, Unit in KN
h=8; //distance of load from centre line of column, Unit in cm
n=9;   //Number of rivets
s=3;   //Space between two rivets, Unit in cm

//Calculations
SumR2=4*(s^2*2+s^2);  //summation of r^2, Unit in cm^2
//I is instantaneous centre of rotation and E is  centroid fo rivets
IE=SumR2/(n*h); //Distance between I and E, Unit in cm
Loadfact=P*h/SumR2; //Load factor=p*h/summation(r^2), Unit in KN/cm
 
//Load in rivets=Loadfact*Distance Of Rivet from I
LoadC=Loadfact*(s^2+(s+IE)^2)^(1/2); // Load in Rivet C, Unit in KN
LoadB=Loadfact*(s^2+IE^2)^(1/2)   //Load in Rivet B , Unit in KN,     The answer vary due to round off error
LoadA=Loadfact*(s^2+IE^2)^(1/2); //Load in Rivet A, Unit in KN,   The answer vary due to round off error
LoadD=Loadfact*IE;  //load in rivet  D, Unit in KN,    The answer vary due to round off error
LoadE=Loadfact*IE;  //load in rivet  E, Unit in KN,    The answer vary due to round off error
LoadF=Loadfact*(s+IE);  //load in rivet F, Unit in KN,     The answer vary due to round off error

//Results
printf("The Load in rivets are :\n\t")
printf("Load in Rivet A=%.2fKN\n\t",LoadA)
printf("Load in Rivet B=%.2fKN\n\t",LoadB)
printf("Load in Rivet C=%.2fKN\n\t",LoadC) //The answer vary due to round off error
printf("Load in Rivet D=%.2fKN\n\t",LoadD)
printf("Load in Rivet E=%.2fKN\n\t",LoadE)
printf("Load in Rivet F=%.2fKN\n\t",LoadF)

