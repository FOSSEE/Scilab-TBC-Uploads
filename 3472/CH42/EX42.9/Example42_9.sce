// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 4: ILLUMINATION

// EXAMPLE : 4.9 :
// Page number 758-759
clear ; clc ; close ; // Clear the work space and console

// Given data
b = 27.45      // Breadth of hall(m)
l = 45.75      // Length of hall(m)
I_avg = 108.0  // Average illumination(lumens/sq.m)
h = 0.75       // Height(m)
cou = 0.35     // Co-efficient of utilization
pf = 0.9       // Pereciation factor
P_fl = 80.0    // Fluorescent lamp power(W)
n_100 = 13.4   // Luminous efficiency for 100W filament lamp(lumens/watt)
n_200 = 14.4   // Luminous efficiency for 200W filament lamp(lumens/watt)
n_80 = 30.0    // Luminous efficiency for 80W fluorescent lamp(lumens/watt)

// Calculations
area = b*l                                   // Area to be illuminated(Sq.m)
I_total = area*I_avg                         // Total illumination on working plane(lumens)
gross_lumen = I_total/(cou*pf)               // Gross lumens required
P_required = gross_lumen/n_200               // Power required for illumination(W)
P_required_kW = P_required/1000              // Power required for illumination(kW)
no_lamp = P_required/200                     // Number of lamps
P_required_new = gross_lumen/n_80            // Power required when fluorescent lamp used(W)
P_required_new_kW = P_required_new/1000      // Power required when fluorescent lamp used(kW)
P_saving = P_required_kW-P_required_new_kW   // Saving in power(kW)

// Results
disp("PART IV - EXAMPLE : 4.9 : SOLUTION :-")
printf("\nSuitable scheme: Whole area divided into %.f rectangles & 200-watt fitting is suspended at centre of each rectangle", no_lamp)
printf("\nSaving in power consumption = %.1f kW", P_saving)
