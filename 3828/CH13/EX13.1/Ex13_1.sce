//Chapter 13 : Thin Film Preparation Techniques and their Applications

clear;

//Variable declaration
delV1=2*10**-3           //milivolts to volts         
delI1=4*10**-6           //microAmpere to Ampere

//Calculations
Rs=delV1/delI1

//Result
mprintf("Series Resistance = %d V/m",Rs)
