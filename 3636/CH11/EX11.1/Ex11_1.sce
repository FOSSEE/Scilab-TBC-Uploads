clear;
clc;
RL=8 //in ohm
VCC=30 //in V

//Calculation
IC_max=VCC/RL 
VCE_max=VCC
IC=VCC/(2*RL)
VCE=VCC-(IC*RL)
PT=VCE*IC

mprintf("maximum collector current= %1.2f A\n",IC_max)
mprintf("Maximum collector-emiiter voltage= %i V\n",VCE_max)
mprintf("Maximum Power rating= %2.2f W",PT) 
