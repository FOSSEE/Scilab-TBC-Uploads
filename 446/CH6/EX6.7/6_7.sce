clear  
clc
disp('Exa-6.7');
n1=3;n2=2;Z=4;hc=1240;
delE=(-13.6)*(Z^2)*((1/(n1^2))-((1/n2^2)));
w=(hc)/delE; //for transition 1
printf('The wavelngth of radiation for transition(2->3) is %f nm\n',w);
n1=4;n2=2;   // n values for transition 2
delE=(-13.6)*(Z^2)*((1/n1^2)-(1/n2^2));
w=(hc)/delE;
printf('The wavelngth of radiation emitted for transition(2->4) is %f nm',w);