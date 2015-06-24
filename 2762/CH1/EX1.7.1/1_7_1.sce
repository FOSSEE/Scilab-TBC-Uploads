//Transport Processes and Seperation Process Principles
//Chapter 1
//Example 1.7-1
//Introduction to engineering principles and units
//given data
//Hf data at 298K 
//Input items: sum of the enthalpies of two streams relative to 298K 
//calculating H of liq
Hil=2000*4.06*(30-25);//inlet mass flow rate of the liquid=2000 kg/h,Cp= 4.06 kJ/kg K, final temp-initial temp= 30 deg C - 25 deg C
//Hiw(enthalpy at inlet of water)=W(4.21)(95-25) where W in kg/h Cp of water is 4.21 kJ/kg K, 95-25 is the temp diff
//Output items 
Hol=2000*4.06*(70-25);//outlet mass flow rate of liquid is 2000 kg/h, Cp= 4.06 kJ/kg K 70-25: temp diff
//How= W(4.21)(85-25)
//energy at inlet = energy at outlet
//4.060*10^4 + 2.947*10^2 W= 3.654*10^5 + 2.526*10^2 W
// solving these equations:
W= ((4.060*10^4)-(3.654*10^5))/((2.526*10^2)-(2.947*10^2))
mprintf("the outlet feed rate in kg/h is %f",W)
//calculating enthalpy change of liquid: 
delH= Hol-Hil;
mprintf(" change in enthalpy in kw in kJ/h is %f",delH)
//end
//s=all the calculations performed are correct but there may be certein deviations.
