clc
pa=1 // 14.7 lb/in^2 = 1ton/ft^2
To=0.275 // ton/ ft^2
N60=8
c= atand((N60/(12.2+20.3*(To/pa)))^0.34)
printf('The average soil friction angle = %f',c)
