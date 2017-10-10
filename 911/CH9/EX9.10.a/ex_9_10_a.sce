//example 9.10(a)//
clc
//clears the screen//
clear
//clears all existing variables//
disp('At the end of eigth LOW to HIGH clock transition, the data bits loaded into the register will be 10110010, with ''0'' on the extreme right appearing at the Q7 output. The ninth clock transition will shift this 0 out of the register and the next adjacent bit (i.e.''1'') will take its place on Q7 output. Each subsequent clock pulse will shift the bits one step towards right with the result that at the end of 11th clock transition, the Q7 output will be logic ''0''. ')