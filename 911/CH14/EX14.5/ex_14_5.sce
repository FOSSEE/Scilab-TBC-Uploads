//example 14.5//
clc
//clears the screen//
clear
//clears all existing variables//
disp('For address inputs (00000000)2 to (00001111)2, RAM-1 and RAM-2 are selected. RAM-1 stores higher four bits and RAM-2 stores lower 4 bits of data words corresponding to 16 address inputs mentioned above. This gives us a capacity of 16*8. Now for address inputs (00010000) to (00011111), RAM# and RAM4 are selected. Similarily, RAM3 and RAM 4, respectively store upper and lower four bits of data words corresponding to these address inputs. This again gives a capacity of 16*8. Thus overall capacity is 32*8. The word size is 8. For an address input of 00001101, RAM-1 and RAM-2 will be selected. The address input range for which RAM-1 and RAM-2 are active is (00000000) to (00001111)')