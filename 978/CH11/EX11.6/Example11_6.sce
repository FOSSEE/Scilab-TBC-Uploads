//chapter-11,Example11_6,pg 506

epsi=0.01///detuning parameter

eta1=1//(f/fo)=1

eta2=2.2//(f/fo)=2.2

//case-1

phi1=atan((3*eta1*((eta1^2)-1)*(3+(2*epsi)))/((((eta1^2)-1)^2)*(3+epsi)-(9*epsi*(eta1^2))))//phase difference 

//case-2

phi2=atan((3*eta2*((eta2^2)-1)*(3+(2*epsi)))/((((eta2^2)-1)^2)*(3+epsi)-(9*epsi*(eta2^2))))//phase difference 

printf("phase difference for case-1\n")

printf("phi1=%.2f rad\n",phi1)

printf("phase difference for case-2\n")

printf("phi2=%.2f rad\n",phi2)