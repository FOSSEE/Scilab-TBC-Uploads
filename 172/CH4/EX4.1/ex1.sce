//example 1
//work done during different processes
clear
clc
P1=200 //initial pressure inside cylinder in kPa
V2=0.1 //in m^3
V1=0.04 //initial volume of gas in m^3
W1=P1*(V2-V1) //work done in isobaric process in kJ
printf("\n hence,the work done during the isobaric process is W1 = %.3f kJ. \n",W1)
W2=P1*V1*log(V2/V1) //work done in isothermal process in kJ
printf("\n hence,the work done in isothermal process is W2 = %.3f kJ. \n",W2)
P2=P1*(V1/V2)^(1.3) //final pressure according to the given process
W3=(P2*V2-P1*V1)/(1-1.3)
printf("\n hence,the work done during the described process is W3 = %.3f kJ. \n",W3)
W4=0 //work done in isovolumic process
printf("\n hence,the work done in the isovolumic process is W4 = %.3f kJ. \n",W4)