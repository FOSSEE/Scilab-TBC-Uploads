// Example 3.12
// Strain Measurement with a Wheatstone Bridge
// form Figure 3.41
R_1=1000;
R_2=100;
R=625;
delta_R=0;
// R_u=(R_2/R_1)*R
R_u=(100/1000)*625;
// After strain is applied , the bridge is rebalanced by ajusting th esecond potentiometer to delta_R=2.4
delta_R_u=(100/1000)*2.4;
// Strain is defined as s=delta_l/l
s=delta_R_u/(2*R_u); // Strain meaasured with the help of Wheatstone Bridge
disp(s,"Strain Measured with the help of wheatstone Bridge=")
