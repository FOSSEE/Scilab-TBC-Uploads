//Variable declaration:
qs1 = 5000.0                    //Volumetric flow rate of C6H5Cl at standard conditions (scfm)
qs2 = 3000.0                    //Volumetric flow rate of air at standard conditions (scfm)
Ta = 70+460.0                   //Actual absolute temperature in Rankine scale (°R)
Ts = 60+460.0                   //Standard absolute temperature in Rankine scale (°R)
V = 387.0                       //Volume occupied by one lbmol of any ideal gas (ft^3)
M1 = 112.5                      //Molecular weight of C6H5Cl (lb/lbmol)
M2 = 29.0                       //Molecular weight of air (lb/lbmol)
T = 60.0                        //Absolute temperature (°F)

//Calculations:
qa1 = qs1*(Ta/Ts)               //Volumetric flow rate of C6H5Cl at actual conditions (acfm)
qa2 = qs2*(Ta/Ts)               //Volumetric flow rate of air at actual conditions (acfm)
n1 = qa1/V                      //Molar flow rate of C6H5Cl (lbmol/min)
n2 = qa2/V                      //Molar flow rate of air (lbmol/min)
m1 = n1*M1*T                    //Mass flow rate of C6H5Cl (lb/h)
m2 = n2*M2*T                    //Mass flow rate of air (lb/h)
m_in = m1+m2                    //Total mass flow rate of both streams entering the oxidizer (lb/h)
m_out = m_in                    //Total mass flow rate of both streams exit the cooler (lb/h)

//Result:
printf("The rate of the products exit the cooler is : %.0f lb/h",m_out)
