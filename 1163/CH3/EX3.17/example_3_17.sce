clear;
clc;
disp("--------------Example 3.17---------------")
L=9; // number of levels
bits_per_level=log2(L); // formula to calculate number of bits per level
printf("The number of bits per level is %3.2f bits.\n",bits_per_level);
if(~(bits_per_level/10 == 0))  // if the number of bits is not an integer or power of 2
    printf("This answer is not realistic. The number of bits sent per level needs to be an integer as well as a power of 2.\n");
    r=nextpow2(bits_per_level);   // find nearesr power of 2
    bits=2^r;
    printf("Therefore %d bits can represent one level.",bits); // display result
end

