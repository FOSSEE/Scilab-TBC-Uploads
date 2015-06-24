//Variable declaration:
i = 12/100                          //Intersest rate
n = 12                              //Lifetime period (yr)
CC = 2625000                        //Capital cost ($)
IC = 1575000                        //Installation cost ($)
//From table 27.3:
Ic1 = 2000000                       //Income credit for double pipe ($/yr)
Ic2 = 2500000                       //Income credit for Shell-and-tube ($/yr)
AC1 = 1728000                       //Total annual cost for double pipe ($/yr)
AC2 = 2080000                       //Total annual cost for Shell-and-tube ($/yr)

//Calculation:
CRF = i/(1-(1+i)**-n)               //Capital recovery factor
DPc = (CC+IC)*CRF                   //Annual capital and installation costs for the DP unit ($/yr)
STc = (CC+IC)*CRF                   //Annual capital and installation costs for the ST unit ($/yr)
DPp = Ic1-AC1                       //Profit for the DP unit ($/yr)
STp = Ic2-AC2                       //Profit for the ST unit ($/yr)

//Result:
printf("The profit for the shell-and-tube unit is : $ %.0f /yr .",DPp)
printf("The profit for the double pipe unit is : $ %.0f /yr .",STp)
if (STp>DPp) then
    printf("A shell-and-tube heat exchanger should therefore be selected based on the above economic analysis.")
else
    printf("A double pipe heat exchanger should therefore be selected based on the above economic analysis.")
end    
