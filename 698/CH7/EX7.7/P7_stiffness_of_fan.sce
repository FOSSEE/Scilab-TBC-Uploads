clc
//Example 7.7
//Stiffness of fan

//------------------------------------------------------------------------------

//Given data

//mass of fan
m=40 //kg
//operating speed
N=520 // rpm
w=(2*%pi*N)/60 //rad/s

//Transmissibility ratio
TR=0.1

res7=mopen(TMPDIR+'7_stiffness_of_fan.txt','wt')
mfprintf(res7,'Transmissibility ratio = 1/(1 - r^2)\n\twhere r is the frequency ratio w/wn\n')

//Natural frequency
wn=sqrt((w^2)/((1+(1/TR)))) // we take absolute value of denominator since it 
                               // may be negative, and thus the expression rendered null
                               
mfprintf(res7,'\nNatural Frequency wn=%0.3f rad/s\n',wn)

//Finding the stiffness

mfprintf(res7,'\n\twn=sqrt(k/m)\nwhere k is the stiffness and m is the mass\n')
k=(wn^2)*m
mfprintf(res7,'Collective stiffness of the springs=%0.3f N/m\n',k)
mfprintf(res7,'Stiffness of each spring=%0.3f N/m',k/3)

mclose(res7)
editor(TMPDIR+'7_stiffness_of_fan.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------