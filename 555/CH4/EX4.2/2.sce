// Implementation of example 4.2
// Basic and Applied Thermodynamics by P.K.Nag
// page 73

clc
clear

Qacb=84 // (heat flow into system along path acb in kJ)
Wacb=32 // (work done by system along path acb in kJ)
Wadb=10.5 // (work done by system along path adb in kJ)
Wab=21 // (work done on system along curved path b to a in kJ)
Ua=0 // (internal energy at a in kJ)
Ud=42 // (internal energy at d in kJ)
Wdb=0 // (since it is following an isochoric path)

Uab=Qacb-Wacb;
Qadb=Uab+Wadb;
Qab=(Uab+Wab);
Wad=Wadb-Wdb;
Qad=(Ud-Ua)+Wad;
Qdb=Qadb-Qad;
printf("Heat flow into the system along path adb = %.2f kJ \n",Qadb);
printf("The system liberates %.2f kJ of heat \n",Qab);
printf("heat absorbed along path ad = %.2f kJ \n",Qad);
printf("heat absorbed along path db = %.2f kJ \n",Qdb);
// end