//Chapter 7_Operation Amplifier Characteristics
//Caption : Offset Voltage Change
//Example7.4: What is the change in the offset voltage of a bipolar transistor amplifier for a difference of 10V in the collector-to-emitter voltage and Va=250 V. Assume room temperature.
//Solution:
clear;
clc;
Vt=25*10^-3;// threshold voltage at room temperature in Volt
Va=250;//early voltage of the bipolar transistor in volt
deltaVce=1;//let us assume 1V of change in Vce(collector-to-emitter voltage)
deltaVos1=Vt*(-deltaVce/Va);
disp('mV',abs(deltaVos1)*10^3,'change in offset voltage for 1 V change in Vce is:')
for i=1:1,
    if i==1 then
        deltaVce=10;// in volt
        deltaVos=deltaVce*deltaVos1;
        disp('mV',abs(deltaVos)*10^3,'change in offset voltage of bipolar transistor for 10V collector-to-emitter voltage(Vce) difference is:')
    end
end