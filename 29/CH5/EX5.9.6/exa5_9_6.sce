//Caption:calculate_gain_of_amplifier_Ka
//example 5.9.6
//page 103
//steady state equations: Ei=Vt+Il*Ra and Vt=Il*Rl
//where Vt=output_voltage, Rl=load_resistance, Ra=armature_resistance, Il=load_current, 
syms Rl Ra Ka Er e;
Ei=450;
If=1.5;//field current
Kg=Ei/If;//generator_emf_constant
Vt=400;
//from stedy state eq. we get : Vt/Ei=Rl/(Rl+Ra)
a=Rl/(Rl+Ra);
a=Vt/Ei;
c=(Kg*a);
G=(Ka*c);
H=0.1;
//transfer function relating erroe 'e' and the reference voltage 'Er' is e/Er=1/(1+GH)
b=e/Er;
b=1/(1+G*H);
e=Vt*H*.02 ;//since allowable error is 2% 
Er=(Vt*H)+e;
//since e/Er=1/(1+G*H), on putting value of e,Er,G and H and solving we get
Ka=1.89;
disp(Ka,"gain_of_amplifier_Ka=");