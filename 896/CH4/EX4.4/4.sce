clc
//Example 4.4
//calculate the change in internal energy of the system
p=14.7;//lbf/in^2 atmospheric pressure
dV=1;//ft^3 change in volume
dW=p*dV*(144/778)//Btu work done
dQ=-42;//Btu heat removed from the system
dU=dQ-dW//Btu change in internal energy of the system
printf("the change in internal energy of the system is %f Btu",dU);