clc,clear
printf('Example 7.6\n\n')

m=32 //mass of deposit
Q=96500 //quantity of electricity 
Z=m/Q //electrochemical equivalent

m1=20*10^-3
Q1= m1* (Q/m)

I=0.15 //steady current
T=Q1/I//time taken to deposit 20 milli-gram
printf('Time taken = %f seconds\n',T)
printf('or <%d hours,%d minutes,%d seconds>',T/3600,60*((T/3600)- floor(T/3600) ) , 60*((60*((T/3600)- floor(T/3600) ) )-floor(60*((T/3600)- floor(T/3600) ) )))
