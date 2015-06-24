//example 16.6
lda= input('Enter the number of LDA instructions :'); // accepting the input from the user  
add= input('Enter the number of ADD instructions :');
sub= input('Enter the number of SUB instructions :');
sta= input('Enter the number of STA instructions :');
shl= input('Enter the number of SHL instructions :');
hlt= input('Enter the number of HLT instructions :');
k= lda+add+sub+sta; 
l=shl+hlt;
c= k*5 + l*4; // calculating the total no.of clck cycles required 
printf('Total clock cycles required to execute are = %d ',c); //displaying result.