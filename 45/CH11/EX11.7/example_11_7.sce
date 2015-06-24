//example 11.7
clc;
clear;
disp('Given karnaugh map '); //given kmap 
disp('     00      01      11      10');
disp('00   11      00''     11      00''');
disp('01   01''     11      11      01''');
disp('11   10      11      11''     10');
disp('10   10''     10''     11      11');
disp('Yes, the circuit may face problem in its operation. When the circuit is at stable state xyAB = 1111 and input AB changes from 11 --> 10 the circuit oscillates between xyAB = 1110 and xy AB = 1010. Also there can be a criticl race problem if at stable state xyAB = 0001, input AB chnge from 01 to 00. The circuit may settle at xyAB = 0100 or xyAB = 1000 depending on which of x and y changes first at the feedbck path. Non-critical race situatuion occurs if at stable state xyAB = 0010 the input AB change from 10 to 00. ');