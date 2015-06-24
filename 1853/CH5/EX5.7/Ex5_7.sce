
//calculate the back emf induced on full load
Ra=0.5  //armature resistance
Rs=250 //shunt resistance
Vl=250  //line volt
Il=40
Is=Vl/Rs 
Ia=Il-Is
Eb=Vl-(Ia*Ra)
disp('emf induced=     '+string(Eb)+'    volts'  );
