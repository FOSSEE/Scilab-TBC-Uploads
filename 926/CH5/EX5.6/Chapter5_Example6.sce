//Hougen O.A., Watson K.M., Ragatz R.A., 2004. Chemical process principles Part-1: Material and Energy Balances(II Edition). CBS Publishers & Distributors, New Delhi, pp 504

//Chapter-5, Illustration 6, Page 118
//Title: Calculation of different concentrations in vaporization process
//=============================================================================
clear
clc

//INPUT
P = [750 760]; //Given pressure and standard pressure in mm Hg
RH = 0.8; //Relative humidity
PS = [17.5 9.2]; //Vapor pressure of water in mm Hg at 20 degree C and 10 degree C
P_new = 35; //Increased pressure by condensing out some water in psi
V = 1000; //Volume of original wet water in cu ft (basis for calculation in part (c))
T = [20 0]; //Given temperature and standard temperature in degree C
T_new = 10; //Reduced temperature by condensing out some water in degree C
MW = 18; //Molecular weight of water in lb/lb-mole

//CALCULATIONS
//Part(a)
PP1 = RH*PS(1); //initial partial pressure of water in mm Hg
MH1 = PP1/(P(1)-PP1); //Initial molal humidity
//Part(b)
PP2 = PS(2); //Final partial pressure of water in mm Hg
P_new1 = 35*(P(2)/14.7); //Final total pressure in mm Hg
MH2 = PP2/(P_new1-PP2); //Final molal humidity
//Part(c)
T1 = T+273; //Given temperature and standard temperature in K
PP3 = P(1)-PP1; //Partial pressure of dry air in mm Hg
PV = V*(PP3/P(2))*(T1(2)/T1(1)); //partial volume of dry air at standard condition in cu ft
n1 = PV/359; //Moles of dry air in lb-moles
n2 = n1*MH1; //lb-mole of water originally present
n3 = n1*MH2; //lb-mole of water finally present
n4 = n2-n3; //lb-mole of water condensed
w1 = n4*MW; //lb of water condensed
//Part(d)
T_new1 = T_new+273; //Final temperature in K
n5 = n1+n3; //Total wet air finally present in lb-moles
v1 = n5*359*(P(2)/P_new1)*(T_new1/T1(2)); //Final volume of wet air in cu ft

//OUTPUT
// Console output
mprintf('\n (a) Initial molal humidity of air = %5.4f',MH1);
mprintf('\n (b) Final molal humidity of air = %5.4f',MH2); 
mprintf('\n (c) Amount of water condensed = %4.3f lb',w1);
mprintf('\n (d) Final volume of wet air = %3.0f cu ft',v1);

// File output
fd= mopen('.\Chapter5_Example6_Output.txt','w');
mfprintf(fd,'\n (a) Initial molal humidity of air = %5.4f',MH1);
mfprintf(fd,'\n (b) Final molal humidity of air = %5.4f',MH2); 
mfprintf(fd,'\n (c) Amount of water condensed = %4.3f lb',w1);
mfprintf(fd,'\n (d) Final volume of wet air = %3.0f cu ft',v1);
mclose(fd);

//===============================END OF PROGRAM=================================
