//Chapter 6:Induction Motor Drives
//Example 14
clc;

mprintf("When operating at a frequency K times rated frequency f then")
mprintf("\nIm**2=[((Rr_/Ksf)**2+(2*pi*Lr_)**2)/((Rr_/Ksf)**2+(2*pi*Lm+2*Pi*Lr_)**2)]*Is**2----(1)")
mprintf("\nSince Im is constant for constant flux,")
mprintf("\nK*s*f=constant--------(2)")
mprintf("\nK*Wms*s=constant-------(3) which is the slip speed")
mprintf("\ns*K=constant----------(4)")
mprintf("\nThereofre for a frequency K*f")
mprintf("\nT=(3/K/Wms)*[(Is*K*Xm)**2*(Rr_/s)/((Rr_/s)**2+K**2*(Xm+Xr_)**2]")
mprintf("\nT=(3/K/Wms*s)*[(Is*Xm)**2*(Rr_)/((Rr_/s/K)**2+(Xm+Xr_)**2]-------(5)")
mprintf("\nHence for a given slip speed (K*Wms*s),K*s is constant and from (1) for a given K*s*f and constant flux")
mprintf("\noperation Is is fixed. Now from (5) T is also fixed. Thus, motor develps a constant torque and draws a")
mprintf("\nconstant current from the inverter at all frequencies for a given slip speed")
