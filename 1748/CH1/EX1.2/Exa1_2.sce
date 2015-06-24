//Exa 1.2
clc;
clear;
close;
//given data
slots=24;//no. of slotes
P=4;//no. of poles
CoilPitch=5;//unitless
NoOfPhase=3;//no of phase
disp("As the winding is in double layer, each slot contains 2 coils per slide.");
CoilSlidePerSlot=2;//coil slide per slot
CoilSlidePerCoil=2;//coil slide per Coil
TotalCoils=slots*CoilSlidePerSlot/CoilSlidePerCoil;//no. of coils
disp(TotalCoils,"Total no. of Coils : ");
PolesPitch=slots/P;//unitless
disp(PolesPitch,"Pole Pitch = ");
CoilsPerPolePerPhase=TotalCoils/(P*NoOfPhase);//No. of Coils/Pole/Phase
disp(CoilsPerPolePerPhase,"No. of Coils/Pole/Phase = ");
pair_of_poles=2;//no. of pair of poles
TotalElectricalDegree=360*pair_of_poles;//in degree 
ElectricalDegreesPerSlot=TotalElectricalDegree/slots;//in degree electrical
disp(ElectricalDegreesPerSlot,"Electrical Degrees/Slot = ");
Slots_required=120/ElectricalDegreesPerSlot;//No. of slotes required for proper phase displacement
disp(Slots_required,"No. of slotes required for proper phase displacement = ");
disp("ie. Phase A1 is brought out from slot no. = 1");
disp("Phase B1 at slot no. = 1+4 = 5");
disp("Phase C1 at slot no. = 5+4 = 9");
disp("Col Connection - end to start to start");
disp("Winding Table is as follows :");
disp("Coil No.     Connection Lead from     Coil Span     Phase and Group No.");
disp("   1                   A1               1-6                  A1");
disp("   2                                    2-7                    ");
disp("   3                                    3-8                  C4");
disp("   4                                    4-9                    ");
disp("   5                   B1               5-10                 B1");
disp("   6                                    6-11                   ");
disp("   7                                    7-12                 A2");
disp("   8                                    8-13                   ");
disp("   9                   C1               9-14                 C1");
disp("  10                                   10-15                   ");
disp("  11                                   11-16                 B2");
disp("  12                                   12-17                   ");
disp("  13                                   13-18                 A3");
disp("  14                                   14-19                   ");
disp("  15                                   15-20                 C2");
disp("  16                                   16-21                   ");
disp("  17                                   17-22                 B3");
disp("  18                                   18-23                   ");
disp("  19                                   19-24                 A4");
disp("  20                                   20-1                    ");
disp("  21                                   21-2                  C3");
disp("  22                                   22-3                    ");
disp("  23                                   23-4                    ");
disp("  24                                   24-5                  B4");