// Variable declaration
Mean = 10.1      // dB
std_dev = 2.7    // dB

// Calculation
// Part(a)
Lower = (8.5-Mean)/std_dev 
Upper = (13.0-Mean)/std_dev

// We need to calculate F- Value for lower & Upper values.
// F(1.07) = 0.8577 & F(-0.59) = 0.2776

// Part(b)
val = 1 - 0.9678   // 1 - F(1.85)
// Result
printf ( "Part(a): %.4f",(0.8577-0.2776))
printf ( "Part(b): %.4f",(0.8577-0.2776))
printf ( "Part(c): %.4f",(1-0.9678))
