clc
//initialisation of variables
t1=850//R
t2=500//R
h=108.59//Btu per lb
h1=96.38//Btu per lb
h2=23.97//Btu per lb
//CALCULATIONS
E=(h1-h2)/(h-h2)*100//percent
//RESULTS
printf('The compressor s internal efficiency=% f percent',E)
