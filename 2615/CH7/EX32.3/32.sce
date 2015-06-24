clc
//initialisation of variables
m=400//mm
v=1.25//sec
s1=22//mm
s2=71//mm
s3=200//mm
s4=134//mm
q=8//equal
//CALCULATIONS
S=s2-s1//mm
S1=s4-s2//mm
S2=s3-s4//mm
V=m/v//mm/sec
V1=s1*q/v//mm/sec
V2=S*q/v//mm/sec
V3=S1*q/v//mm/sec
V4=S2*q/v//mm/sec
//RESULTS
printf('the average velocity of the ram for the entire=% f mm/sec',V4)
