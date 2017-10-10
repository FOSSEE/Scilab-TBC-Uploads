  

//Example 12.4

//Page 529
 
disp('The Traffic intensity of system is,')

A=1*2

disp('The raffic intensity carried by i active ckt is exactly i erlangs. Hence the traffic carried by 1st 5 ckt is,')

P1=[(1*2^1)/(1)]
 
P2=[(2*2^2)/(1*2)]
 
P3=[(3*2^3)/(1*2*3)]

P4=[(4*2^4)/(1*2*3*4)]

P5=[(5*2^5)/(1*2*3*4*5)]

A5={(%e^-2)*[P1+P2+P3+P4+P5]}

disp('All of remaining ckts carry,')

Ar=2-1.89

disp("Result")
 
disp("A(5) = 1.89 erlangs")
 
disp("A(remaining) = 0.11 erlangs")
