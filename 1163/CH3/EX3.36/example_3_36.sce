clear;
clc;
disp("--------------Example 3.36---------------")
bitrate=265*10^3; // 256 kbps
bandwidth= 20 * 10^3; // 20 kHz
L= 2^(bitrate/(2*bandwidth)); // bit rate = 2*bandwidth*log2(L)
printf("\nThe number of levels is %3.1f .",L);
c=log2(L);
if(~(modulo(c,10)==0)) // check correctness of the answer . If not practical , change it.
    printf("\nSince this result is not a power of 2, we need to either increase the number of levels or reduce the bit rate.");
    r=floor(bitrate/(2*bandwidth));
    L=2^r;
    n_bitrate=2*bandwidth*log2(L);
    printf("\n\nHence the number of signal levels is %d and bit rate is %d kbps.",L,n_bitrate*10^-3); // display final result
end
