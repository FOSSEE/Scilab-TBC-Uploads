clc
//Variable Initialization
V=120 //Supply Voltage In Volts
Vm=120*1.414 //Max. Voltage In Volts
Ra=10 //Armature Resistance In Ohm
af=0 //Firing Angle Of Converter
Eb=60 //Back Emf In Volts

//Solution
Va=Vm*(1+cos(af))*(1/%pi)//Voltage Across armature In Volts
Ia=(Va-Eb)/Ra //Average Value Of Armature Current In Amp

//Result
printf('\n\n The Average Value Of Armature Current=%0.1f Amp\n\n',Ia)
