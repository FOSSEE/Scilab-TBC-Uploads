clc
//intialising values
n=8
RR1=2.322
RR2=2.346
RR3=2.352
RR4=2.306
RR5=2.312
RR6=2.300
RR7=2.306
RR8=2.326

M= (RR1+RR2+RR3+RR4+RR5+RR6+RR7+RR8)/n // Mean

K= (RR1-M)^2+(RR2-M)^2+(RR3-M)^2+(RR4-M)^2+(RR5-M)^2+(RR6-M)^2+(RR7-M)^2+(RR8-M)^2 // Sum of squares of difference between mean and observations

Es= 0.6745*sqrt(K/(n-1)) //Probable Error of single observatio
Em= Es/sqrt(n) // Probable error of mean

//Results

printf('Es = +/- %f m\n',Es)
printf(' Em = +/- %f m',Em)
