//clc()
PC1 = 85;//% ( Percent carbon in coal )
PA1 = 15;//% ( Percent ash in coal )
PA2 = 80;//% ( Percent ash in cinder )
PC2 = 20;//% ( Percent carbon in cinder )
m = 100;//kg (weight of coal )
mash = PA1 * m / 100;
w = mash * 100 / PA2;// weight of cinder
mcarbon = w - mash;
Plost = mcarbon * 100 / ( m - mash );
disp("kg",w,"weight of cinder formed = ")
disp("%",Plost,"Percent fuel lost = ")