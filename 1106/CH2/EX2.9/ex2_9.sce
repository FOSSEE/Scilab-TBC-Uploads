// Example 2.9, page no-89
clear
clc

Vdd=12
Vss=-12
Iss=175*10^-6
Rd=65*10^3
kn=3*10^-3
Vth=1

Ids=Iss/2

Vgs=Vth + sqrt(Iss/kn)

Vds = Vdd- Ids*Rd + Vgs

// Requirement for saturation
Vicmax= Vdd - Ids*Rd + Vth

Ids=Ids*10^6
printf("\nIds=%.1f uA", Ids)
printf("\nVgs=%.3f V", Vgs)
printf("\nVds=%.2f V", Vds)
printf("\nVicmax=%.2f V", Vicmax)
printf("\nRequirement of saturation for M1 \nfor non-zero Vic necessiates Vic <= 7.312 V")
