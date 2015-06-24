//Variable declaration
l=[0.6,1.2,0.9,1.0,0.6,0.8]      //list of delay times
k=0

//Calculation
Mean= mean(l)
for i = 1:length(l)
    k = k + (l(i)-Mean)^2
end    
s=sqrt(k/(length(l)-1))       // Standard deviation (in minute)

//Results
printf ( "Standard deviation : %.2f minute",s)
