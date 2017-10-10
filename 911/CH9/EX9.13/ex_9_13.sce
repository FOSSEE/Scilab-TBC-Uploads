//example 9.13//
clc
//clears the screen//
clear
//clears all existing variables//
disp('Initially all the outputs are in logic 0 state. Since A=B=1, the serial input to the shift register is logic 1. The (MR)'' input is initially inactive. For the first three clock pulses, the output status is 10000000, 11000000 and 11100000. With the fourth clock pulse, the output tends to go to 11110000 but it can not be stable state as the NAND output goes from 1 to 0. This resets the register to 00000000. Thus, the register transits from 11100000 to 00000000. With the fifth, sixth, and seventh clock pulse, the circuit goes through 10000000, 11000000 and 11100000. The eighth clock pulse regenerates to 00000000')