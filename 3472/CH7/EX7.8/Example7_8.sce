// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART I : GENERATION
// CHAPTER 7: TARIFFS AND ECONOMIC ASPECTS IN POWER GENERATION

// EXAMPLE : 7.8 :
// Page number 74-75
clear ; clc ; close ; // Clear the work space and console

// Given data
load_domestic = 15000.0              // Domestic load supplied by station(kW)
diversity_domestic = 1.25            // Diversity factor of domestic load
DF_domestic = 0.7                    // Demand factor of domestic load
load_commercial = 25000.0            // Commercial load supplied by station(kW)
diversity_commercial = 1.2           // Diversity factor of commercial load
DF_commercial = 0.9                  // Demand factor of commercial load
load_industry = 50000.0              // Industrial load supplied by station(kW)
diversity_industry = 1.3             // Diversity factor of industrial load
DF_industry = 0.98                   // Demand factor of industrial load
diversity_factor = 1.5               // Overall system diversity factor

// Calculations
// Case(a)
sum_demand = load_domestic+load_commercial+load_industry   // Sum of max demand of individual consumers(MW)
MD = sum_demand/diversity_factor                           // Maximum demand
// Case(b)
MD_domestic = load_domestic*diversity_domestic             // Maximum domestic load demand(kW)
connected_domestic = MD_domestic/DF_domestic               // Connected domestic load(kW)
MD_commercial = load_commercial*diversity_commercial       // Maximum commercial load demand(kW)
connected_commercial = MD_commercial/DF_commercial         // Connected commercial load(kW)
MD_industry = load_industry*diversity_industry             // Maximum industrial load demand(kW)
connected_industry = MD_industry/DF_industry               // Connected industrial load(kW)

// Results
disp("PART I - EXAMPLE : 7.8 : SOLUTION :-")
printf("\nCase(a): Maximum demand = %.f kW", MD)
printf("\nCase(b): Connected domestic load = %.1f kW", connected_domestic)
printf("\n         Connected commercial load = %.1f kW", connected_commercial)
printf("\n         Connected industrial load = %.1f kW", connected_industry)
