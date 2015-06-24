//Example 10-1,Page No - 368

clear
clc

BW_service = 860*10^6
BW_ch = 6*10^6

total_ch = BW_service/BW_ch

printf('Total number of channels are %d',total_ch)
