// Implementation of example 4.3
// Basic and Applied Thermodynamics by P.K.Nag
// page 73-74

clc
clear

Q=-170 // (sum of all heat transfers during a cycle in kJ)

Qab=0 // (heat transfer in process a-b in kJ/min)
Qbc=21000 // (heat transfer in process b-c in kJ/min)
Qcd=-2100 // (heat transfer in process c-d in kJ/min)
Wab=2170 // (work done in process a-b in kJ/min)
Wbc=0 // (work done in process b-c in kJ/min)
dEcd=-36600 // (change in internal energy in kJ/min)

dEab=Qab-Wab;
dEbc=Qbc-Wbc;
Wcd=Qcd-dEcd;
// The system completes 100 cycles per min
Qda=(Q*100)-(Qab+Qbc+Qcd);
// Now dE=0,since cyclic integral of any property is zero
dEda=-(dEab+dEbc+dEcd);
Wda=Qda-dEda;
printf("change in internal energy in a-b is = %.2f kJ/min \n",dEab);
printf("change in internal energy in b-c is = %.2f kJ/min \n",dEbc);
printf("work done in c-d is = %.2f kJ/min \n",Wcd);
printf("change in internal energy in  d-a is = %.2f kJ/min \n",dEda);
printf("work done in d-a is = %.2f kJ/min \n",Wda);
printf("heat transfer in d-a is = %.2f kJ/min \n",Qda);
// end