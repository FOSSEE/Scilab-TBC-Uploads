//exapmle-11.7
//page no-363
//given
//applied strain
epsilon=0.4
//immediate stress
sigmai=10*10^9  //Pa
//after 42 days stress is
sigma=5*10^9  //Pa
t=42  //days
//as we know that
//sigma=sigmai*exp(-t/tr)
//so
tr=t/log(sigmai/sigma)   //days
//stress after 90 days
t90=90 //days
sigma90=sigmai*exp(-t90/tr)*10^-9   //MPa
printf ("relaxation time for the tensile stress to decrease from 10 to 5 MPa is %fdays\n and the stress after 90 days is %f MPa",tr,sigma90)
