clear;
//clc();

// Example 11.9
// Page: 290
printf("Example-11.9  Page no.-290\n\n");

//***Data***//
Temp = 25;//[C]
x_water = 5;//[mo]
x_benzene = 0.1;//[mol]

// The fugacity of the ethanol must be same in both phases so that we have distribution coefficient 

// K = ( distribution coefficient ) = x_ethanol(water_rich phase)/x_ethanol(benzene-rich phase) = y_ethanol(benzene-rich phase)/y_ethanol(water-rich phase)
// Here distribution coefficient is defined as rhe ratio of mole fractions of the distributed solute between the two phases.

// We observe that for the first experimental data set in table 11.4 in the book(page 276)
x_ethanol_water_rich = 3.817;//[%]
x_ethanol_benzene_rich = 1.010;//[%]

// So 
K = x_ethanol_water_rich/x_ethanol_benzene_rich;

// Now for all the data set in the table 11.4 in the book(page 276), we wiil draw a plot 

X = [3.817,7.968,12.977,18.134,23.540,24.069,27.892,31.725,35.510,39.382,41.062,41.771];
Y = [1.010,3.323,5.860,9.121,12.939,13.340,16.090,18.943,22.444,26.216,29.341,33.093];
Z = X./Y;

// Plotting the graph between 'Z' and 'Y' 
plot(Y,Z);
xgrid();
xlabel("Mol% ethanol in benzene-rich phase ");
ylabel("Distribution coefficient of ethanol, K_ethanol");

// We see from the plot that at the low mole percent of ethanol , the distribution coefficient is approximately 
K_1 = 4;

// Thus ratio of the amount of the ethanol distributed in the two phases will be 4
//the amount in mol % is 
// for water rich phase 
m_water_rich = 100*K_1/(K_1+1);
m_benzene_rich = 100/(K_1+1);

printf(" Ethanol''s 0.1 mol distributed in the water rich phase will be   %f mol%% of the total mol\n",m_water_rich);
printf(" Ethanol''s 0.1 mol distributed in the benzene rich phase will be %f mol%% of the total mol",m_benzene_rich);