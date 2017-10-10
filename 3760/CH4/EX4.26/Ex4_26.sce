clc;
Vt=250;//rated o/p voltage of generator
Pout=10000;//o/p of generator in watts
Ra=0.4;//armature resistance
Rse=0.2;//series field resistance
Rs=125;//shunt field reesistance
Vb=2;//total brush cotact drop
Il=Pout/Vt;//load current

//PART(a)-LONG SHUNT CONNECTION
If=Vt/Rs;//shunt field current
Ia=Il+If;//armature current
//series field winding also carries Ia.
Eal=Vt+Ia*(Rse+Ra)+Vb;//generated emf in armature
printf('The generated EMF in armature when the generated is connected as long shunt machine is %f.\n',Eal);

//PART(b)-SHORT SHUNT CONNECTION
V=Vt+Il*Rse;//voltage across shunt field and armature terminals
If_=V/Rs;//shunt field current
Ia_=Il+If_;//armature current
Eas=V+Ia*Ra+Vb;//generated emf in armature
printf('The generated EMF in armature when the generated is connected as short shunt machine is %f.',Eas);

//PART(c)-
//Series field ampere turns are proportional to series-field current I
//Is=0.3/0.5*I, where , Is is series field current with diverter.
//series field ampere-turns with dvider = K*0.6*Is, where K is a constant.
//percentage reduction in series field ampere turns is - ((I-O.6I)/I)*100.
disp('Percentage reduction in series field ampere turns is 40%.');
