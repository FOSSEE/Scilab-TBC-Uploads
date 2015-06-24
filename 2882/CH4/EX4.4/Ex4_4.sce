//Tested on Windows 7 Ultimate 32-bit
//Chapter 4 Bipolar Junction transistors Pg no. 133
clear;
clc;

//Given Data

VCEsat=0.25;//VCEsat in volts
VBB=4.5;//base driving source in volts
RB=20;//base resistance in kilo-ohms
RC=680;//collector resistance in ohms
VCC=9;//collector driving source in volts
VBE=0.7;//forward drop of emitter diode
Bdc=100;//dc current gain for CE configuration

//Solution
//Figure 4.12

ICsat=(VCC-VCEsat)/RC*1000;//value of collector saturation current in milli-amperes
printf("IC(sat)=%.2f mA\n\n",ICsat);
IB=(VBB-VBE)/RB;//value of base current in milli-amperes
printf("IB=%.2f mA\n\n",IB);
IC=Bdc*IB;//collector current for given IB in milli-amperes
printf("IC=%d mA\n\n",IC);

if IC>ICsat then
    printf("Since IC(calculated) = %d mA is greater than IC(sat),\nthe transistor is in saturation.\nThe collector current of %d mA is never reached.\nIf you increase IB further,\nthe collector current is at the saturation value.",IC,IC);
end

//Error of 0.01 mA in textbook in the calculation of IC(sat)
