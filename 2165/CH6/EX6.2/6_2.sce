clc
//initialisation of variables
v=((3140*%pi*60*60)/(4*4*144))//ft/sec
v1=0.852*38.37//ft^3
//CALCULATIONS
W=(v/v1)//lb
V=(2970*%pi*60*60)/(4*4*144)//ft^3
W1=(V/v1)//lb
//RESULTS
printf('the weight of steam per hour=% f lb',W)
printf('the weight of steam per hour=% f lb',W1)
