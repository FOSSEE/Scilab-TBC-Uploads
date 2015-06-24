clear;
clc;
disp("--------------Example 10.8---------------")
printf("The second block code scheme (Table 10.2) has dmin = 3. This code can detect up to two errors.\nWhen any of the valid codewords is sent, two errors create a codeword which is not in the table of valid codewords.\nHowever, some combinations of three errors change a valid codeword to another valid codeword.\nThe receiver accepts the received codeword and the errors are undetected."); //display the example
