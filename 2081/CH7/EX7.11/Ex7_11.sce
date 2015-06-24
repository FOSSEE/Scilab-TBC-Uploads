nip=228
nop=456
cr=nop/nip
ntdma=8//no.of TDMA blocks
nebptd=nop/ntdma//no. of bits/tdma frame
ttdma=4.6*10^-3//1 TDMA frame duration
tttdma=ntdma*ttdma
printf('Delay in reconstructing the codewords to the reception of 8 TDMA frames is %.1f ms',tttdma*10^3)
