clear;
//clc();

// Example 4.3
// Page: 80
printf("Example-4.3  Page no.-80\n\n");

//***Data***//
// We have the system which consists of isobutane and normal butane and isomerisaation is taking place between them 
// The equilibrium constant for this reaction is given by
// K = (mole fraction of isobutane)/(mole fraction of n-butane) = x_iso/x_normal

// For this reaction, at 25C, 
K = 4.52;

// and
// x_iso + x_normal = 1
// so
// K = x_iso/(1-x_iso)

// solving for x_iso
deff('[y]=f(x_iso)','y = x_iso/(1-x_iso)-K');
x_iso = fsolve(0,f);

printf(" Mole fraction of isobutane isomer in equilibrium is %0.2f",x_iso);
