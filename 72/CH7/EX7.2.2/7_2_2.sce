
//chapter_no.-7,  page_no.-298
//Example_no.7-2-2
clc;

//(a)Calculate_the_electron_drift_velocity
q=1.6*(10^-19);
f=10*(10^9);//operating_frequency
L=10*(10^-6);//Device_Length
vd=f*L;
disp(vd,'the_electron_drift_velocity(in m/sec)is =');
vd=vd*100;
disp(vd,'the_electron_drift_velocity(in cm/sec)is =');
vd=vd/100;

//(b)Calculate_the_current_density

n=2*(10^14)*(10^6);
J=q*n*vd;
disp(J,'the_electron_drift(n A/m^2)is =');
J=J/(10^4);
disp(J,'the_electron_drift(n A/cm^2)is =');


//(c)CAPTION: Calculate_the_negative_electron_mobility

E=3200;//applied_field
vd=vd*(100);
un=-1*(vd/E);
disp(un,'negative_electron_mobility(in cm^2/V*sec)is =');
