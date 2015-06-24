clc
//initialisation of variables
d= 0.275 //in
p= 15
p1= 20
p3= 8
//CALCULATIONS
Fs= (d*p/100)+(d*p1/100)-(d*p3/100)
Fs1= Fs*100/d
//RESULTS
printf ('final  available squeeze = %.2f percent',Fs1)
