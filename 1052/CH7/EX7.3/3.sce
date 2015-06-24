clc;
//Example 7.3
//page no 66, fig. 7.4
printf("Example 7.3 page no 66,fig 7.4\n\n\n");
//fluid device has four openings as shoen in figure
//we have to calculate magnitude and direction of velocity,mass flow rate at section 4
rho=800//density of fluid 
v1=5//velocity at section 1
S1=0.2//surface area at section 1
v2=7//velocity at section 2
S2=0.3//surface area at section 2
v3=12//velocity at section 3
S3=0.25//surface area at section 3
S4=0.15//surface area at section 4
printf("\n velocity v1=%f m/s \n surface area S1=%f m^2/s\n velocity v2=%f m/s\n surface area S2=%f m^2/s\n velocity v3=%f m/s\n surface area S3=%f m^2/s\n surface area S4=%f m^2/s",v1,S1,v2,S2,v3,S3,S4);
q1=v1*S1//volumatric flow rate at section 1
q2=v2*S2//volumatric flow rate at section 2
q3=v3*S3//volumatric flow rate at section 3
printf("\n volumatric flow rate q1=%f m^3/s\n volumatric flow rate q2=%f  m^3/s\n volumatrisc flow rate q3=%f m^3/s",q1,q2,q3);
//applying continuity equation
q4=q1+q2-q3//volumatric flow rate at section 4
v4=q4/S4//velocity at section 4
printf("\n volumatric flow rate q4=%f m^3/s\n velocity v4=%f m/s ",q4,v4);
m=rho*q4//mass flow rate at section 4
printf("\n mass flow rate m=%f kg/s",m);

