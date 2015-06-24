//Example 18.2.
clc
format(6)
icd=(24/500)*10^3  // in mA
disp(icd,"Average value of load current,  Id.c.(mA) = Vdc / RL =")
im=%pi*48 // in mA
disp(im,"Maximum value of load current,  Im(mA) = pi * Idc =")
disp("Therefore, maximum ac voltage required at the input,")
vm=550*150.8*10^-3 // in V
disp(vm,"      Vm(V) = Im * (rf+RL) =")