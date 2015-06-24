EbINodB=-1.59//shannon limit in (AWGN)
EbINo=10^(EbINodB/10)
M=1/EbINo//theoretical mobile users

EbINodB1=6
EbINo1=10^(EbINodB1/10)
M1=1/EbINo1//practical mobile users
printf('theoretical number of mobile users,M= %.2f Gp',M)
printf('\npractical number of mobile users,M= %.2f Gp for Eb/No=6dB',M1)
