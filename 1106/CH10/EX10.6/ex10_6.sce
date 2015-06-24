// Example 10.6, Page No-439
clear
clc

fr=300
bw=50
ip=320
pdop=fr+ip
printf('\nPhase detector output= %d kHz', pdop)
difr=ip-fr
printf('\nDifference Frequency= %d kHz', difr)
printf('\nAs Bandwidth is greater than difference frequency,')
printf('\nPLL can acquire lock')
