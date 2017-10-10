clc
// Example 5.7.py
// Consider the wind tunnel described in example 5.2. Estimate the ratio of diffuser
// throat area to nozzle throat area required to allow the tunnel to start. Also, 
// assuming that the diffuser efficiency is 1.2 after the tunnel has started, calculate
// the pressure ratio across the tunnel necessary for running i.e. calculate the ratio
// of total pressure at the diffuser exit to the reservoir pressure.

// Variable declaration

M = 2.5      // mach number before the shock
eta_d = 1.2  // diffuser efficiency

// Calculations

// from table for M = 2.5
po2_by_po1 = 0.499              // po2/po1
At2_by_At1 = 1 / po2_by_po1     // At2/At1 = po1/po2
 
Pdo_by_po = eta_d * po2_by_po1  // pdo/po

// Results
printf("\n Ratio of diffuser throat area to nozzle throat area %.2f", At2_by_At1)

printf("\n Ratio of total pressure at the diffuser exit to the reservoir pressure, %.3f",(Pdo_by_po))

