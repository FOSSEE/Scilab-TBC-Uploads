clc;
//Example 17.2
//page no 201
printf("Example 17.2 page no 201\n\n");
rpm=1694//speed of fan 
q=12200//flow rate of q_a
rpm_n=2100//new speed of fan 
q_n=q*(rpm_n/rpm)//new flow rate
printf("\nnew flow rate q_n=%f acfm",q_n);
//applyingeq 17.5
P=5//pressure ,in
P_n=P*(rpm_n^2/rpm^2)//new pressure
printf("\nnew pressureP_n=%f in H20",P_n);
//required power is calculated using eq. 17.6
hp=9.25//power at 1694 speed
hp_n=hp*(rpm_n^3/rpm^3)//new power required
printf("\n new powerhp_n=%f bhp",hp_n);

