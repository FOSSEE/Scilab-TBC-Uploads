
//Variable declaration:
i = 0.03375                     //Rate of interest (%)
n = 9                           //Years to the end of life (yr)
P = 60000                       //Cost of exchanger ($)
L = 500                         //Salvage value ($)
x = 5                           //Time after 5 years (yr)

//Calculation:
SFDF = i/((1+i)**n-1)           //Sinking fund depreciation factor
UAP = (P-L)*SFDF                //Uniform annual payment ($)
B = ceil(P-((P-L)/n)*x)               //Appraisal value after 5 years ($)

//Result:
printf("1. The uniform annual payment made into the fund at the of the year is : $ %.0f",UAP)
printf("2. The appraisal value of the exchanger at the end of the fifth year is : $ %.0f",B)
