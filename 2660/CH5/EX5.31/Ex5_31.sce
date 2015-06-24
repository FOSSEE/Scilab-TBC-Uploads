clc
// capstan lathe
tc1 = 300 // total cost in Rs
mc1 = 2.5 // material cost per piece in Rs
olc1 = 5 // operation labour cost per hour in Rs
ct1 = 5 // cycle time per piece in min.
slc1 = 20 // setting up labour cost in Rs per hour
st1 = 1 // setting up time in hour
mo1 = 300/100 // machine over heads of operation labour cost
o1 = mo1*olc1 // overheads of capstan lathe in Rs per hour
fc1 = tc1 + slc1*st1 + o1*st1 // fixed cost of capstan lathe in Rs
vc1 = mc1 + (olc1*ct1)/60 + (o1*ct1)/60 // variable cost in Rs
// Automatic (single spindle) 
tc2 = 300 // total cost in Rs
cc2 = 1500 // cost of cams in Rs
mc2 = 2.5 // material cost per piece in Rs
olc2 = 2 // operation labour cost per hour in Rs
ct2 = 1 // cycle time per piece in min.
slc2 = 20 // setting up labour cost in Rs per hour
st2 = 8 // setting up time in hour
mo2 = 1000/100 // machine over heads of operation labour cost
o2 = mo2*olc2 // overheads of single spindle in Rs per hour
fc2 = tc2 + cc2 + slc2*st2 + o2*st2 // fixed cost of single spindle in Rs
vc2 = mc2 + (olc2*ct2)/60 + (slc2)/60 // variable cost in Rs
q = (fc2-fc1)/(vc1-vc2) // break even quantity
printf("\n Break even quantity for a component which can be produced on either the capstan lathe or single spindle automatic = %d pieces" , q)
