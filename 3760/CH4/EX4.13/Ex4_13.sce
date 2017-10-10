//The answer given in book for this question is wrong.

clc;
P=4;//No of poles
Ia=120;//armature current
A=4;//No of parallel paths for armature conductor
L=0.02//inductance in mH
//Et=L*(di/dt),Transformer emf in coil
//di=2*Ia/A,change of current during commutation
//dt=Tc,time of commutation
//Et=0.02*0.001*(60/Tc) ....(1)
//Er=2*(Bav*l*v),rotational emf in single turn coil
//Er=2*(phi_c/Tc) ....(2),phi_c is the avg value of flux in the commutating zone
//For linear commutation, Er=Et, from equation (1)&(2)
phi_c=60*0.02*0.001/2;//phi_c is the avg value of flux in the commutating zone
printf('THE AVG. VALUE OF FLUX IN THE COMMUTATING ZONE IS %f Wb.',phi_c)
