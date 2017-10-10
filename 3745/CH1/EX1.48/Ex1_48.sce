// Ex 48 Page 393

clc;clear;close;
// Given
theta1=20;//degree C
theta2=35;//degree C
t1=0.5;//hour
t2=1;//hour
theta_m_dashBYthetam=80/100;//temperature rise

//theta=theta_m*(1-e**(-t/alfa))
//theta1/theta2=(1-%e**(-t1/alfa))/(1-%e**(-t2/alfa))
ee1=theta2/theta1-1;//let ee1=exp(-1/2/alfa)
theta_m=theta1/(1-ee1);//degree C
theta_2=theta_m*(1-ee1**4);// degree C (after 2 hours)
printf("temperature rise after 2 hours full load = %.f degree C",theta_2)
alfa=-1/2/log(ee1);//hour
alfa_dash=theta_m_dashBYthetam*alfa;//hour
theta_m_dash=theta_m_dashBYthetam*theta_m
theta_dash=theta_m_dash*(1-%e**(-t2/alfa))
printf("\n temperature rise of cold water after 1 hour = %.f degree C",theta_dash)
//ans of 2nd part is wrong in the book.
