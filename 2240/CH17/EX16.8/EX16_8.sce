// Grob's Basic Electronics 11e
// Chapter No. 16
// Example No. 16_8
clc; clear;
// In Fig. 16–14, determine (a) the capacitance value and tolerance; (b) the temperature-range identification information.

disp ('(a) Since the capacitance is expressed as a decimal fraction, its value is in microfarads. In this case, C = 0.047 uF. The letter Z, to the right of 0.047, indicates a capacitor tolerance of +80%, -20%. Notice that the actual capacitance value can be as much as 80% above its coded value but only 20% below its coded value.')

disp ('(b) The alphanumeric code, Z5V, printed below the capacitance value, provides additional capacitor information. The letter Z and number 5 indicate the low and high temperatures of +10°C and +85°C, respectively. The letter V indicates that the maximum capacitance change over the specified temperature range (10°C to 85°C) is +22%, +82%. For temperature changes less than the range indicated, the percent change in capacitance will be less than that indicated.')
