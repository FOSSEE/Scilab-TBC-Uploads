//Variable declaration:
m = 0.4008                     //Mean(inch)
s = 0.0004                   //Standard Deviation(inch)
UL = 0.4000+0.001            //Upper Limit
LL = 0.4000-0.001            //Upper Limit

//Calculation:
Ps = cdfnor("PQ",UL,m,s)-cdfnor("PQ",LL,m,s)//Probability of meeting specs
Pd = 1-Ps                    //Probability of defect

//Results:
printf("Probability of meeting specifications: %.2f %%",Ps*100)
printf("Probability of Defect: %.2f %%",Pd*100)
