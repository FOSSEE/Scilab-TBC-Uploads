//Problem 20.26: Determine the saving in the volume of copper used in an auto transformer compared with a double-wound transformer for (a) a 200 V:150 V transformer, and (b) a 500 V:100 V transformer.

//initializing the variables:
V1a = 200; // in Volts
V2a = 150; // in Volts
V1b = 500; // in Volts
V2b = 100; // in Volts

//calculation:
//For a 200 V:150 V transformer, xa
xa = V2a/V1a
//volume of copper in auto transformer
vca = (1 - xa)*100 // of copper in a double-wound transformer
//the saving is
vsa = 100 - vca
//For a 500 V:100 V transformer, xb
xb = V2b/V1b
//volume of copper in auto transformer
vcb = (1 - xb)*100 // of copper in a double-wound transformer
//the saving is
vsb = 100 - vcb

printf("\n\n Result \n\n")
printf("\n (a)For a 200 V:150 V transformer, the saving is %.0f percent", vsa)
printf("\n (b)For a 500 V:100 V transformer, the saving is %.0f percent", vsb)