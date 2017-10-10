clc
hg=2547.3 //in kJ/kg
hf=104.77 //in kJ/kg
deltaH=hg-hf
mass=18 //molar mass of water
moles=1000/mass //moles of water in kg
mprintf("DeltaH=%fkJ/kg=%fkJ/mol\n",deltaH,deltaH/moles)//ans vary due to roundoff error
deltaHst=-3274.5 //standard from Ex6_17.sce
deltaH=deltaHst+(6*(-deltaH/moles))
mprintf("deltaH298=%fkJ",deltaH)//ans vary due to roundoff error

