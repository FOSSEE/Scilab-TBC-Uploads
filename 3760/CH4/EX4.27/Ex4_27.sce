clc;
Vt=230;//output voltage
Ra=0.3;//armature circuit resistance
Rf=160;//field circuit resistance
Il=40;//line current at full load & rated voltage
Ia1=3.33//armature current at rated voltage & no load speed of 1000 rpm
//No load counter emf is-
Ea1=Vt-Ia1*Ra;
If=Vt/Rf;//field current
//At full load armature current is-
Ia2=Il-If;
Ea2=Vt-Ia2*Ra;//Counter emf at full load
//At full load, the field flux is-
//Phi_2=0.96*phi_1
//The conter emf Ea, is given by- Ea=Ka*phi*Wm
//Ea1/Ea2=(Ka*phi_1*Wm1)/(Ka*phi_2*Wm2)=(phi_1*n1)/(phi_2*n2) or 229/218.43=(1000*phi_1)/n2*(0.96*phi_1)...(1)
//from equation (1)
n2=995;//full load speed
//At full load, Ea2=Ka*phi_2*Wm
//Ka*phi_2=Ea2/Wm
//Electromagnetic or developed, torque at full load is, Te=Ka*phi_2*Ia2
Te=(Ea2*60)/(2*%pi*n2)*Ia2;//Electromagnetic torque developed.
printf('Electromagnetic or developed, torque at full load is %f.',Te);
