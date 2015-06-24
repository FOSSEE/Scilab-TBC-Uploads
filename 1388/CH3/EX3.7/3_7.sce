clc
//initialisation of variables
vl= 0.019 //l
vg= 16.07 //l
h= 1489 //mm of Hg
//CALCULATIONS
w= -(h/760)*(vl-vg)*(1.987/0.0826)
//RESULTS
printf (' Work done= %.f cal ',w+5)
