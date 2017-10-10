clc;
g1=1.5; // gain factor of amplifier
g2=80; // gain factor of generator
vo=250; // output voltage at no load
s=0.2; // feedback potentiometer setting
// for generated voltage= 80V field current is 1 A
ifl=vo/g2; // field current for generated voltage= 250V
vi=ifl/g1; // amplifier input voltage for field current corresponding to generated voltage= 250V
vfb=s*vo; // feedback voltage
vr=vfb+vi;
printf('Reference voltage for given potentiometer setting is %f V\n',vr);
printf('When feedback setting is zero, reference voltage is %f V',vi); 
