//CAPTION:Carcinotron_Characteristics
//chapter_no.-10,  page_no.-483
//Example_no.10-4-1

clc;

//(a)Calculate_the_dc_electron_velocity

V0=20*(10^3);//Anode_voltage
v0=.593*(10^6)*sqrt(V0);
disp(v0,'the_dc_electron_velocity_(in m/s)is  =');



//(b) Calculate_the_electron-beam_phase_constant


f=4*(10^9);//operating_frequency
w=2*%pi*f;
Be=w/v0;
disp(Be,'the_electron-beam_phase_constant(in rad/m)is  =');




//(c) Calculate_the_delta_differentials


b=.5;//b_factor
disp('The_Delta_differentials_are :  s1=');
s1=(%i)*((b-sqrt((b^2)+4))/2);
disp(s1,'   s1=');
s2=(%i)*((b+sqrt((b^2)+4))/2);
disp(s2,'And  s2=');



//(d)Calculate_the_propagation_constants

D=.8;//D_factor
disp('the_propagation_constants are ');
r1=((%i)*(Be+b))+(b*D*s1);
disp(r1,'   r1=');
r2=((%i)*(Be+b))+(b*D*s2);
disp(r2,'   r2=');



//(e)Calculate_the_oscillation_condition

disp('the_oscillation_occurs_at_ DN=1.25 for n=1 ');
N=1.25/D;
disp(N,'then N=');

l=(2*%pi*N)/Be;
l=l*100;//in_cm
disp(l,'and l= 2*pi*N/Be(in cm) = ')

