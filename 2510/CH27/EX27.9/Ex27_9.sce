//Variable declaration:
TCC_TB = 2500000                   //Total capital cost ($)
R_TB = 3600000                     //R_TBevenue generated from the facility ($)
AOC_TB = 1200000                   //Annual operating costs ($)
TCC_FB = 3500000                   //Total capital cost ($)
R_FB = 5300000                     //R_TBevenue generated from the facility ($)
AOC_FB = 1400000                   //Annual operating costs ($)
n = 10                          	//Time of facility (yr)

//Calculation:
D = 0.1*TCC_TB                     //Depriciation ($)
WC = 0.1*TCC_TB                    //Working capital ($)
TI = R_TB-AOC_TB-D                 //Taxable income ($)
IT = 0.5*TI                        //Income tax to be paid ($)
A = R_TB-AOC_TB-IT                 //After-tax cash flow ($)
function [ans] = eqTB(i)
	x = (((1+i)**n-1)/(i*(1+i)**n))*A + (1/(1+i)**n)*WC    //Equation for computing rate of return for TB unit
	y = WC + 0.5*TCC_TB + 0.5*TCC_TB*(1+i)**1              //Equation for computing rate of return for TB unit
	ans = x-y
endfunction    
iTB = ceil(fsolve(0.8,eqTB)*100)   //Rate of return for TB unit (%)

D = 0.1*TCC_FB                     //Depriciation ($)
WC = 0.1*TCC_FB                    //Working capital ($)
TI = R_FB-AOC_FB-D                 //Taxable income ($)
IT = 0.5*TI                        //Income tax to be paid ($)
A = R_FB-AOC_FB-IT                 //After-tax cash flow ($)

function [ans] = eqFB(i)
	x = (((1+i)**n-1)/(i*(1+i)**n))*A + (1/(1+i)**n)*WC    //Equation for computing rate of return for FB unit
	y = WC + 0.5*TCC_FB + 0.5*TCC_FB*(1+i)**1              //Equation for computing rate of return for FB unit
	ans = x-y
endfunction    
iFB = fsolve(0.8,eqFB)*100 //Rate of return for FB unit (%)

//Results:
printf("The rate of return for TB unit is: %.0f %%",iTB)
printf("The rate of return for FB unit is: %.1f %%",iFB)
