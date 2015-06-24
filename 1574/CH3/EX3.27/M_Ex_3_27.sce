clc
//Chapter3: Modulation
//Example3.27, page no 176
//Given
Q=100 //Q factor
 fc=1000e3// Carrier freq
fsb1=999e3//lower Side band freq
fsb2=1001e3//Upper side Band freq
ma=0.5//Modulation depth of signal current
Ma=ma/1.019// Expression for Ma after simplification
mprintf('The Depth of modulation across the \n circuit is : Ma= %f%c',Ma*100,'%')

// Note :  There are some calculation errors in the solution presented in the book
