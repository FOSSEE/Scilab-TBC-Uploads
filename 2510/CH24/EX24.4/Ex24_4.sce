//Variable declaration:
fm = 30/100                         //Mole fraction of methane
fe = 50/100                         //Mole fraction of ethane
fp = 20/100                         //Mole fraction of pentane
LFLm = 0.046                        //Lower flammability limit for methane
LFLe = 0.035                         //Lower flammability limit for ethane
LFLp = 0.014                        //Lower flammability limit for propane
UFLm = 0.142                        //Upper flammability limit for methane
UFLe = 0.151                        //Upper flammability limit for ethane
UFLp = 0.078                        //Upper flammability limit for propane

//Calculation:
LFLmix = 1/((fm/LFLm)+(fe/LFLe)+(fp/LFLp))  //Lower flammability limit of gas mixture
UFLmix = 1/((fm/UFLm)+(fe/UFLe)+(fp/UFLp))  //Upper flammability limit of gas mixture

//Result:
printf("The upper flammability limit (UFL) of the gas mixture is : %.2f %%",UFLmix*100)
printf("The lower flammability limit (LFL) of the gas mixture is : %.2f %%",LFLmix*100)
printf("There is a printing mistake in book.")
