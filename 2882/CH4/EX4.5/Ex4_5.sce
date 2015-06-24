//Tested on Windows 7 Ultimate 32-bit
//Chapter 4 Bipolar Junction transistors Pg no. 133 and 134
clear;
clc;

//Given Data

Bdc=50;//dc current gain for CE configuration
VBB=3;//base driving source in volts
RB=15;//base resistance in kilo-ohms
RC=1;//collector resistance in kilo-ohms
VCC=12;//collector driving source in volts
VCEsat=0.25;//VCEsat in volts
VBE=0.7;//forward drop of emitter diode


//Solution

ICsat=(VCC-VCEsat)/RC;//value of collector saturation current in milli-amperes
IB=(VBB-VBE)/RB;//value of base current in milli-amperes
IC=Bdc*IB;//collector current for given IB in milli-amperes

if IC>ICsat then
    printf("The transistor is in saturation and VCE=VCEsat=%.2f Volts",VCEsat);
else
    printf("The transistor is not in saturation and VCE=VCC-IC*Rc = %.2fVolts",(VCC-IC*RC));
end
