clc
//Example 15.11
// Heat from brake drive

//------------------------------------------------------------------------------
//Given Data:

T_atm=28
T_surf=228
Ar=6
C=44

res11= mopen(TMPDIR+'11_heat_from_brake_drive.txt','wt')

Hd=C*(T_surf-T_atm)*Ar
mfprintf(res11,'Hd=C*(T_surf-T-atm)*Ar\n')
mfprintf(res11,'Hd = %0.1f kW',Hd * 1e-3)

mclose(res11);
editor(TMPDIR+'11_heat_from_brake_drive.txt')

//------------------------------------------------------------------------------
//--------------------------------End of program--------------------------------