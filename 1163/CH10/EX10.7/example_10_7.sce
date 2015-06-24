clear;
clc;
disp("--------------Example 10.7---------------")
printf("The minimum Hamming distance for the first code scheme (Table 10.1) is 2.\nThis code guarantees detection of only a single error. For example, if the third codeword (l01)\nis sent and one error occurs, the received codeword does not match any valid codeword. If two errors occur, however,\nthe received codeword may match a valid codeword and the errors are not detected."); //display the example
