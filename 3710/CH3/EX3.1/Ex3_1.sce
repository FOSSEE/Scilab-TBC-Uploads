//Example 3.1, Page Number 97
//Change in Refraction Index due to Pockels effect
clc;

//Variable Initialization
l=10*(10**-3) //Width of Crystal in milli meter
V=4000 //Applied Voltage in volts
r=26.4*(10**-12)//linear electro optic coefficient in pm per volt
no=1.51**3//Value for KD*P taken from table 3.1
//Using data in Table 3.1(Page No 100)
dn=0.5*lc*(no)*(V/(10**-2)) //dn is the change in refraction index
mprintf("The Change in Refraction Index due to Pockels effect is %0.1e",dn);
