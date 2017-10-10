// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 11: LOAD FREQUENCY CONTROL AND LOAD SHARING OF POWER GENERATING SOURCES

// EXAMPLE : 11.1 :
// Page number 330
clear ; clc ; close ; // Clear the work space and console
funcprot(0)

// Given data
rating = 1000.0        // Rating of alternator(kW)
load = 1600.0          // Total load(kW)
X_fl = 100.0           // Full load speed regulation of alernator X(%)
Y_fl = 104.0           // Full load speed regulation of alernator Y(%)
X_nl = 100.0           // No load speed regulation of alernator X(%)
Y_nl = 105.0           // No load speed regulation of alernator Y(%)

// Calculations
h = poly(0,"h")
PB = (Y_nl-X_nl)-h
PR = rating/(Y_nl-X_nl)*PB           // Load shared by machine X(kW) in terms of h
QQ = (Y_fl-X_fl)-h
RQ = rating/(Y_fl-X_fl)*QQ           // Load shared by machine Y(kW) in terms of h
h_1 = roots(PR+RQ-load)
PB_1 = (Y_nl-X_nl)-h_1
PR_1 = rating/(Y_nl-X_nl)*PB_1       // Load shared by machine X(kW)
QQ_1 = (Y_fl-X_fl)-h_1
RQ_1 = rating/(Y_fl-X_fl)*QQ_1       // Load shared by machine Y(kW)
load_cease = rating/(Y_nl-X_nl)      // Y cease supply load(kW)

// Results
disp("PART II - EXAMPLE : 11.1 : SOLUTION :-")
printf("\nLoad shared by machine X, PR = %.f kW", PR_1)
printf("\nLoad shared by machine Y, RQ = %.f kW", RQ_1)
printf("\nLoad at which machine Y ceases to supply any portion of load = %.f kW", load_cease)
