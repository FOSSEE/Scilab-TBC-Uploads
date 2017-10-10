clc;
A=100; // amplidyne voltage amplification
vo=200; // DC generator output voltage
rf=125; // field winding resistance
vfb=0.1; // ratio of feedback voltage to output voltage of generator 
vr=50; // reference voltage
// amplidyne output voltage,Va =(vr-vfb*vt)*A
// ig=va/rf ig is generator field current
// vog=ig*vo vog is generator output voltage-1
// simplifying 1 we get 
vt=(vr*A)/((vfb*A)+(rf/vo));
printf('Output voltage of generator is %f V\n',vt);
// now feedback voltage is reduced to zero
vr=(vt*rf)/(A*vo);
printf('Reference voltage to obtain required output generator voltage is %f V ',vr);
 
