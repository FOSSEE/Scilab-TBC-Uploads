//Variable declaration:
f = 100000                        //Flow rate of flue gas (acfm)
i = 0.1                           //Interest rate
//From table 27.4:
//For finned preheater:
ac1 = 3.1                         //Equipment cost ($/acfm)
ac2 = 0.8                         //Installation cost ($/acfm)
ac3 = 0.06                        //Operating cost ($/acfm-yr)
ac4 = 14000                       //Maintenance cost ($/yr)
an = 20                           //Lifetime (yr)
//For 4-pass preheater:
bc1 = 1.9                         //Equipment cost ($/acfm)
bc2 = 1.4                         //Installation cost ($/acfm)
bc3 = 0.06                        //Operating cost for ($/acfm-yr)
bc4 = 28000                       //Maintenance cost ($/yr)
bn = 15                           //Lifetime of (yr)
//For 2-pass preheater:
cc1 = 2.5                         //Equipment cost ($/acfm)
cc2 = 1.0                         //Installation cost ($/acfm)
cc3 = 0.095                       //Operating cost for ($/acfm-yr)
cc4 = 9500                        //Maintenance cost for ($/yr)
cn = 20                           //Lifetime of (yr)

//Calculation:
//For Finned preheater:
aEC = f*ac1                        //Total equipment cost ($)
aIC = f*ac2                        //Total installation cost ($)
aOC = f*ac3                        //Total operating cost ($)
aMC = f*ac4                        //Total maintenance cost ($)
aCRF = (i*(1+i)**an)/((1+i)**an-1) //Capital recovery factor
aAEC = aEC*aCRF                    //Equipment annual cost ($/yr)
aAIC = aIC*aCRF                    //Installation annual cost($/yr)
aAOC = ac3*f                       //Annual operating cost ($)
aAMC = ac4                         //Annual maintenance cost ($)
aTAC = aAEC+aAIC+aAOC+aAMC         //Total annual cost ($)

//For 4-pass preheater:
bEC = f*bc1                        //Total equipment cost ($)
bIC = f*bc2                        //Total installation cost ($)
bOC = f*bc3                        //Total operating cost ($)
bMC = f*bc4                        //Total maintenance cost ($)
bCRF = (i*(1+i)**bn)/((1+i)**bn-1) //Capital recovery factor
bAEC = bEC*bCRF                    //Equipment annual cost ($/yr)
bAIC = bIC*bCRF                    //Installation annual cost($/yr)
bAOC = bc3*f                       //Annual operating cost ($)
bAMC = bc4                         //Annual maintenance cost ($)
bTAC = bAEC+bAIC+bAOC+bAMC         //Total annual cost ($)
//For 2-pass preheater:
cEC = f*cc1                        //Total equipment cost ($)
cIC = f*cc2                        //Total installation cost ($)
cOC = f*cc3                        //Total operating cost ($)
cMC = f*cc4                        //Total maintenance cost ($)
cCRF = (i*(1+i)**cn)/((1+i)**cn-1) //Capital recovery factor
cAEC = cEC*cCRF                    //Equipment annual cost ($/yr)
cAIC = cIC*cCRF                    //Installation annual cost($/yr)
cAOC = cc3*f                       //Annual operating cost ($)
cAMC = cc4                         //Annual maintenance cost ($)
cTAC = cAEC+cAIC+cAOC+cAMC         //Total annual cost ($)

//Result:
printf("Total annual cost for finned preheater is : $ %.0f",aTAC)
printf("Total annual cost for 4-pass preheater is : $ %.0f",bTAC)
printf("Total annual cost for 2-pass preheater is : $ %.0f",cTAC)
if (cTAC<aTAC & cTAC<bTAC) then
    printf("According to the analysis, the 2-pass exchanger is the most economically attractive device since the annual cost is the lowest.")
elseif (bTAC<aTAC & bTAC<cTAC) then
    printf("According to the analysis, the 4-pass exchanger is the most economically attractive device since the annual cost is the lowest.")
elseif (aTAC<cTAC & aTAC<bTAC) then
    printf("According to the analysis, the finned exchanger is the most economically attractive device since the annual cost is the lowest.")
end    
