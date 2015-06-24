
clear;
//clc();

// Example 1.1
// Page: 9
printf("Example-1.1  Page no.-9\n\n");

//***Data***//
m_i = 10;//[g]
m_w = 990;//[g]
M_i = 342.3;//[g]
M_w = 18;//[g]
// The mass fraction is 
// ( mass fraction of sucrose ) = x_i (by mass) = m_i/(sum of all substances)
x_i = m_i/(m_i+m_w);
x_i = x_i*100;// [in percentage]
// This is also the weight fraction.
// The mole fraction is
// ( mole fraction of sucrose ) = x_j (by mole) = n_i/(sum of number moles of all the substances)
n_i = m_i/M_i;// number of moles of sucrose
n_w = m_w/M_w;// number of moles of water
x_j = n_i/(n_i+n_w);
x_j = x_j*100;// [in percentage]
// The molality, a concentration unit is widely used in equilibrium calculations, is defined as 
// m (molality) = (moles of solute)/(kg of solvent)
m = n_i/m_w*1000;//[molal]
// For solutions of solids and liquids (but not gases) ppm almost always means ppm by mass, so 
x_ppm = x_i*10^(6)/100;//[ppm]
printf(" sucrose concentration in terms of the mass fraction is %f%%\n",x_i);
printf(" sucrose concentration in terms of the mole fraction is %f%%\n",x_j);
printf(" sucrose concentration in terms of the molality is      %f molal\n",m);
printf(" sucrose concentration in terms of the ppm is           %f ppm",x_ppm);