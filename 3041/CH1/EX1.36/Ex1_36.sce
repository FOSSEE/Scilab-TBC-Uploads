

//Variable declarations
v=12                         //output voltage(V)
vm=20.                       //peak voltage(V)
v1=8                         //output voltage(V) for negative half cycle
vm1=20.                      //peak voltage(V) for negative half cycle 

//Calculations
t1=(asin(v/vm))/10**4         //for positive half cycle when D1 conducts
t2=(0.1*%pi)-t1/1e-3           
t3=(asin(v1/vm1))/10**4       //for negative half cycle when D2 conducts
t4=(0.1*(%pi))+t3/1e-3           
t5=(0.2*(%pi))-t3/1e-3

//Results
printf ("t1 is %.3f ms",t1/1e-3)
printf ("t2 is %.2f ms",t2)
printf ("t3 is %.3f ms",t3/1e-3)
printf ("t4 is %.3f ms",t4)
printf ("t5 is %.3f ms",t5)
printf ("vo is -5.33+6.66*sin(10**4*.15)")
