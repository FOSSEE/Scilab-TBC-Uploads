//Variable declaration:
C = 150000                      //Capital cost ($)
i = 7/100                       //Interest rate
n = 5                           //Time (yr)
OC = 15000                      //Operating cost ($)
A = 75000                       //Annual cost for the old process ($)

//Calculation:
CRF = (i*(1+i)**n)/((1+i)**n-1) //Capital recovery factor
IC = CRF*C                      //Initial cost ($)
AC = IC+OC                      //Total annualized cost ($)

//Result:
printf("The annualized cost for the new heating system is : $ %.0f",AC)
if (AC<A) then
    printf("Since this cost is lower than the annual cost of $75,000 for the old process, the proposed plan should be implemented.")
else 
    printf("Since this cost is higher than the annual cost of $75,000 for the old process, the proposed plan should not be implemented.")
end
