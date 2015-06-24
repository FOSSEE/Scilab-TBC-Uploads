clc
disp("Example 6.57")
printf("\n")
printf("given")
disp("gain is 200 & gain bandwidth product is 1MHz")
Af=200
GBW=10^6
BW=10^4
reqBW=GBW/Af
if(reqBW>BW) then
  printf("Required bandwidth is=%f",reqBW)
  else
    Af2=10
    Af1=200/Af2
    R1fbyR11=Af1-1
    R2fbyR21=Af2-1
    printf("The ratio of resistance of both amplifier circuit is=\n%d,\n%d",R1fbyR11,R2fbyR21)
end