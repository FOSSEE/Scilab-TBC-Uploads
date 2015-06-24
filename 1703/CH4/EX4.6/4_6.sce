
clc
//initialisation of variables
B= 3 //ft
H= 2 //ft
H1= 3.75 //ft
w= 4 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
Q= 3.33*(B-(H1/5))*H^1.5
v= Q/(H*w)
kh= v^2/(2*g)
Q1= 3.33*(B-(H1/5)-kh)*(((H1/5)+kh)^1.5-kh^1.5)
//RESULTS
printf ('Discharge = %.2f cuses',Q1) 


//ANSWER IN THE TEXTBOOK IS WRONG
