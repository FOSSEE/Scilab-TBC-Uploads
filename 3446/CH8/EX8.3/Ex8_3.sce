// Exa 8.3
// To demostrate 4X4 Bit interleaving/de-interleving.

clc;
clear all;

BitStream= [0 0 0 0 0 1 1 1 0 0 0 1 0 0 0 1];//Last bit to first bit

//solution
disp("Interleaving is performed by storing the data in a table containing rows and  columns at the transmitter. The data is written in rows and transmitted in a vertical direction (according to columns). At the receiver, the data is written and read in the opposite manner. ")

// Interleaver
              Input1=[1 0 0 0      //Writing data row wise
                      1 0 0 0
                      1 1 1 0
                      0 0 0 0];
disp("GIven Bit stream is")
disp(BitStream);
disp("Input to interleaver is")
disp(Input1);

Output1=[0 0 0 0 0 1 0 0 0 1 0 0 0 1 1 1];    // Reading data column wise
disp("Output of interleaver is");
disp(Output1);
//De-interleaver
              Input2=[1 1 1 0  //Writing o/p data row wise
                      0 0 1 0    
                      0 0 1 0
                      0 0 0 0];
 // Let From 6th to 9th bits have Burst Error 
 disp("Input to de-interleaver is");
 disp(Input2);
 //Output of deinterleaver
                             
Output2= [0 0 0 0 0 1 1 1 0 0 0 1 0 0 0 1]; 
disp("Output of de-interleaver is")
disp(Output2);
disp( "Bits with Burst error were from 6th to 9th. But in output of de-interleaver, they relocated to positions 3rd, 6th, 10th and 14th.");
