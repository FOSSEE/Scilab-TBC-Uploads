
//calculate the emf induced in the armature
Il=200
Vl=500
Ra=0.03
Rs=0.015
Is=200  //for a short shunt generator   Il=Ise
R=150
BCD=2  //one volt per brush
I=(Vl+(Is*Rs))/R
Ia=Il+I
Eg=Vl+(Ia*Ra)+(Ia*Rs)+BCD
disp('emf induced=     '+string(Eg)+'    volts'  );
