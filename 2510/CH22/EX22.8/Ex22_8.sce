//Variable declaration:
Q1 = 10*10**6                       //Unit heat duty for process unit 1 (Btu/h)
Q2 = 8*10**6                        //Unit heat duty for process unit 2 (Btu/h)
Q3 = 12*10**6                       //Unit heat duty for process unit 3 (Btu/h)
Q4 = 20*10**6                       //Unit heat duty for process unit 4 (Btu/h)
hv = 751                            //Enthalpy of vaporization for pressure 500 psig (Btu/lb)

//Calculation:
mB1 = Q1/hv                         //Mass flowrate of 500 psig steam through unit 1 (lb/h)
mB2 = Q2/hv                         //Mass flowrate of 500 psig steam through unit 2 (lb/h)
mB3 = Q3/hv                         //Mass flowrate of 500 psig steam through unit 3 (lb/h)
mB4 = Q4/hv                         //Mass flowrate of 500 psig steam through unit 4 (lb/h)
mBT = mB1+mB2+mB3+mB4               //Total steam required (lb/h)
mBT = round(mBT*10**-1)/10**-1

//Result:
printf("The total steam required is : %f lb/h.",mBT)
