// Grob's Basic Electronics 11e
// Chapter No. 16
// Example No. 16_12
clc; clear;
//Suppose a film capacitor, coded 393J, is being measured using the meter shown in Fig. 16–25. If the meter reads 37.6 on the 200-nF range, (a) What is the capacitance value in picofarad units? (b) Is the measured capacitance value within its specified tolerance?

disp ('The capacitor code, 393J, corresponds to a capacitance value of 39,000 pF +-5%.')
disp ('(a) A reading of 37.6 on the 200-nF range corresponds to a capacitance of 37.6 nF. To convert 37.6 nF to picofarad units, move the decimal point three places to the right. This gives an answer of 37,600 pF.')
disp ('(b) The acceptable capacitance range is calculated as follows: 39,000 pF * 0.05 = +-1950 pF. Therefore, the measured value of capacitance can range anywhere from 37,050 pF to 40,950 pF and still be considered within tolerance.')

disp('Note that in nanofarad units, this corresponds to a range of 37.05 to 40.95 nF. Since the measured value of 37.6 nF falls within this range, the measured capacitance value is within tolerance.')
