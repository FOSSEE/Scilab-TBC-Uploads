//chapter22
//example22.5
//page493

Vgs1=-3.1 // V
Vgs2=-3 // V
Id1=1d-3 // A
Id2=1.3d-3 // A

g_fs=(Id2-Id1)/(Vgs2-Vgs1)

printf("transconductance = %.3f mho or %.3f micro mho \n",g_fs,g_fs*1d6)
