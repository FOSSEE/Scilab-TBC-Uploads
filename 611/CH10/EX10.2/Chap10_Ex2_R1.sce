// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-10,Example 2,Page 369
//Title:Number of degrees of freedom
//================================================================================================================
clear 
clc

//INPUT
P=2;//number of phases (no unit)
C=2;//number of components (no unit)

//CALCULATION
F=C+2-P;//calculation of the number of degrees of freedom using Eq.(10.35) (no unit)

//As the number of degrees of freedom is 2, two intensive properties of the system are to be specified to describe the thermodynamic state of the system.Therefore, the fundamental relation in the Gibbs free energy representation for this system is of the type G=G(T,P,N1,N2)

//OUTPUT
mprintf("\n The number of degrees of freedom = %d \n",F);
mprintf("Two intensive properties are required to be specified to describe the thermodynamic state of the system,and \nthe fundamental relation in the Gibbs free energy representation for this system is of the type, G=G(T,P,N1,N2)");

//===============================================END OF PROGRAM===================================================
