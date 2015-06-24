clc
//initialization of variables
clear
d=5 //cm
rpm1=300 //rpm
rpm2=30000 //rpm
s=1000 //kg/cm^2
//calcuations
T=(d/2)*%pi*10^2*s/32
hp1= 2*%pi*rpm1*T/4500
hp2=hp1*100
// results
printf('Horse power at 300 rpm and 30000 rpm are respecively %d, %d h.p.',hp1/10,hp2/10)

// wrong/approximate answers in the text
