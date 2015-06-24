clc;
// page no 671
// prob no 18_2_1
//A drum of facsimile machine with diameter=70.4mm & scanning pitch=0.2mm/scan
D=70.4;P=0.2;
//Determination of index of co-operation 
IOC_CCITT=D/P;
IOC_IEEE=IOC_CCITT*(%pi);
disp(IOC_IEEE,'The index of co-operation is');