//example 14.3//
clc
//clears the screen//
clear
//clears all existing variables//
disp('Since the overall RAM capacity is 32 MB, it will have 25 address inputs(AB0-AB24) as 32M=2^25. For address inputs hex (0000000) to (0FFFFFF), which account for 16M=(2^24) memory locations, RAM-1 is enabled and 16 M locations of RAM 1 are available. RAM-2 is deselected for these address inputs. For address inputs (1000000)hex to (1FFFFFF)hex, the total no of addresses in this group again being equal to 16M, RAM-2 is selected and RAM-1 is deselected. 16M locations of RAM-2 are available. Thus out of 32 MB, 16 MB is stored in RAM-1 and 16 MB is stored in RAM-2.')