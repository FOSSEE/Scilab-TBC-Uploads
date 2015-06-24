//chapter23
//example23.4
//page514

v=100 // V
Vm=200 // V
R_L=100 // ohm

// since v=Vm*sin(theta), we get

theta=asin(v/Vm)*180/%pi // in terms of degrees

phi=180-theta

V_avg=Vm*(1+cos(theta*%pi/180))/(2*%pi)

I_avg=V_avg/R_L

printf("firing angle = %.2f degrees \n",theta)
printf("conduction angle = %.2f degrees \n",phi)
printf("average current = %.4f A \n",I_avg)

// the accurate answer for average current is 0.594 A but in book it is given as 0.5925 A 
