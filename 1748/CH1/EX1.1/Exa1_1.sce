//Exa 1.1
clc;
clear;
close;
//given data
slots=24;//no. of slotes
NoOfPhase=3;//no of phase
MotorSpeed=1450;//in rpm
N=1500;//Synchonous Speed in rpm
f=50;//in Hz
disp("As the winding is in single layer, each slot contains one coil slide only.");
CoilSlidePerSlot=1;//coil slide per slot
CoilSlidePerCoil=2;//coil slide per Coil
TotalCoils=slots*CoilSlidePerSlot/CoilSlidePerCoil;//no. of coils
disp(TotalCoils,"Total no. of Coils : ");
P=120*f/N;//no. of poles
disp(P,"No. of poles : ");
PolesPitch=slots/P;//unitless
disp(PolesPitch,"Poles Pitch = ");
disp("In case of single layer winding, the pole ppitch is generally taken in odd numbers only, such as 5,7.9 etc. One slot will remain unoccupied, if the pitch is taken as even number.");
disp("let pole pitch = 5(for short pitch winding)");
PolesPitch=5;//for short pitch winding
disp("Coil Span or coil through = 1-6");
CoilsPerPolePerPhase=TotalCoils/(P*NoOfPhase);//No. of Coils/Pole/Phase
disp(CoilsPerPolePerPhase,"No. of Coils/Pole/Phase = ");
pair_of_poles=2;//no. of pair of poles
TotalElectricalDegree=360*pair_of_poles;//in degree 
ElectricalDegreesPerSlot=TotalElectricalDegree/slots;//in degree electrical
disp(ElectricalDegreesPerSlot,"Electrical Degrees/Slot = ");
Slots_required=120/ElectricalDegreesPerSlot;//No. of slotes required for proper phase displacement
disp(Slots_required,"No. of slotes required for proper phase displacement = ");
disp("Winding Table is as follows :");
disp("Coil No.     Connection Lead from     Coil Span     Phase and Group No.");
disp("   1                   A1               1-6                  A1");
disp("   2                                    3-8                  C4");
disp("   3                   B1               5-10                 B1");
disp("   4                                    7-12                 A2");
disp("   5                   C1               9-14                 C1");
disp("   6                                   11-16                 B2");
disp("   7                                   13-18                 A3");
disp("   8                                   15-20                 C2");
disp("   9                                   17-22                 B3");
disp("  10                                   19-24                 A4");
disp("  11                                   21-2                  C3");
disp("  12                                   23-4                  B4");