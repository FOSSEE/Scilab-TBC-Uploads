//scilab 5.4.1
//Windows 7 operating system
//chapter 17 Number Systems,Boolean Algebra,and Digital Circuits
clc
clear
hFE=30//hFE=dc current gain of given silicon transistor
VBE=0.8//VBE=base-emitter voltage drop at saturation
VCE=0.2//VCE=collector-emitter voltage drop at saturation
R1=15*1000//resistance at the base side of the transistor in ohms
R2=100*1000//another resistance at the base side of the transistor in ohms
RL=2*1000//load resistance at the collector side of the transistor in ohms
VCC=10//VCC=collector supply voltage
VBB=-10//VBB=base supply voltage
//If the input level is 0 volt i e vi=0,the open-circuited base voltage is given as
VB=VBB*(R1/(R1+R2))
disp("For input level 0 V:")
disp("As a bias of approximately 0 V is sufficient to cut off a silicon emitter junction ,it follows that transistor is cut off when vi=0")
disp("V",VCC,"When vi=0,the output voltage is vo=VCC=")
disp("This indicates that the output is in state 1 when the input is in state 0")
//When the input level is 10 volt i e vi=10, we have to show that the transistor is in saturation
//The minimum base current for saturation is given by iB(min)=iC/hFE
iC=(VCC-VCE)/RL//collector current when the transistor saturates
iB=iC/hFE//iB=iB(min)=minimum base current for saturation in mA
i1=(10-VBE)/R1//i1=current through R1 resistor connected at the base side and here vi=10 is taken
i2=(VBE-VBB)/R2//i2=current through R2 resistor connected at the base side
iB1=i1-i2//iB1=actual base current
disp("For input level 10 V:")
if (iB1>iB) then
    disp("Since iB>iB(min),it is verified that the transistor is in saturation")//iB indicates actual base current & iB(min) indicates minimum base current for saturation
    disp("V",VCE,"When vi=10,the output voltage is vo=VCE(sat)=")
    disp("This indicates that the output is in state 0 when the input is in state 1")
end
disp("Overall it has been thus verified that the circuit has performed the NOT operation")
