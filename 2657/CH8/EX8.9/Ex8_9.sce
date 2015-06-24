//Calculations on gas engine
clc,clear
//Given:
pH2=49.4/100,pCO=18/100,pCH4=20/100,pC4H8=2/100,pO2=0.4/100,pN2=6.2/100,pCO2=4/100 //Composition of Coal gas
MW=20 //Mixture weakness in percent
//Solution:
//Combustion equations for determining the moles of Oxygen used
//2[H2] + [O2] ---> 2[H2O]      //For Hydrogen
//2[CO] + [O2] ---> 2[CO2]      //For Carbon mono oxide
//[CH4] + 2[O] ---> [CO2] + 2[H2O]     //For Methane
//[C4H8] + 6[O2] ---> 4[CO2] + 4[H2O]    //For C4H8
nO2=sum([pH2/2 pCO/2 2*pCH4 6*pC4H8 pO2]) //Moles of O2 required (error)
nCO2=sum([pCO pCH4 4*pC4H8 pCO2]) //Moles of CO2
nH2O=sum([pH2 2*pCH4 4*pC4H8]) //Moles of H2O
p_v=21 //Percentage of Oxygen in air by volume
n_a=nO2/p_v*100 //Moles of air required
n_f=1 //For 1 mole of fuel
A_F=n_a/n_f //Air fuel ratio
//For weak mixture
A_F_act=A_F*(1+MW/100) //Actual air fuel ratio
nN2=(1-p_v/100)*A_F_act //Moles of N2
nO2=p_v/100*A_F_act-nO2 //Excess moles of Oxygen in products
nN2=nN2+pN2 //Moles of Nitrogen in products
nT_d=nCO2+nO2+nN2 //Total dry moles of product
nT_w=nT_d+nH2O //Total wet moles of product
p_d=[nCO2 nO2 nN2]*100/nT_d //Percentage volumetric composition of the dry products of combustion
p_w=[nCO2 nH2O nO2 nN2]*100/nT_w //Percentage volumetric composition of the wet products of combustion
//Results:
printf("\n The stoichiometric air fuel ratio used, A_F = %.1f/1",A_F)
printf("\n The wet products analysis in percent\n\t CO2 = %.0f\n\t H2O = %.2f\n\t O2 = %.2f\n\t N2 = %.2f",p_w(1),p_w(2),p_w(3),p_w(4))
printf("\n The dry products analysis in percent\n\t CO2 = %.2f\n\t O2 = %.2f\n\t N2 = %.2f\n\n",p_d(1),p_d(2),p_d(3))
//Answers in the book are wrong
