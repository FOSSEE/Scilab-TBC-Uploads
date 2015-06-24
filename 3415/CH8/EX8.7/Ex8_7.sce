//fiber optic communications by joseph c. palais
//example 8.7
//OS=Windows XP sp3
//Scilab version 5.4.1
//given
clc
clear all
Ps=3//source power in dBm
NA_glass=0.24//numerical aperture for glass
NA_plastic=0.48//numerical aperure for plastic
loss_glass=12.4//loss for glass fiber in dB
loss_plastic=6.4//loss for plastic fiber in dB
reflectn_loss=0.2// reflection losses in dB
atten_glass=5//attenuation in glass dB/Km
atten_plastic=200//attenuation in plastic dB/Km
L1=10*10^-3//fiber length in Km
L2=100*10^-3//fiber length in Km
//to find
glass_coup_loss=Ps-(reflectn_loss + loss_glass)//Glass fiber coupling Loss in dBW
mprintf('Coupling  glass loss=%fdBW',glass_coup_loss)
plastic_coup_loss=Ps-(reflectn_loss + loss_plastic)//plastic coupling fiber  loss in dBW
mprintf('\nCoupling  loss in  plastic=%fdBW',plastic_coup_loss)
glass_cp= glass_coup_loss-atten_glass*L1//Coupled power in glass in dBW for 10m
mprintf('\nCoupled power in glass=%fdBW after 10m',glass_cp)
plastic_cp=plastic_coup_loss-atten_plastic*L1//Coupled power in plastic in dBW for 10m
mprintf('\nCoupled power in plastic=%fdBW after 10m',plastic_cp)
glass_cp= glass_coup_loss-atten_glass*L2// Coupled power in glass in dBW for 100m
mprintf('\nCoupled power in glass=%fdBW after 100m',glass_cp)
plastic_cp=plastic_coup_loss-atten_plastic*L2 // Coupled power in plastic in dBW for 100m
mprintf('\nCoupled power in plastic=%fdBW after 100m',plastic_cp)
