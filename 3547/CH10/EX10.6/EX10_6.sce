// Example 10.6
// to find the nonlinear phase shift at the center of the pulse. Compare the exact results with those obtained using first and second-order perturbation theory
// Page no 469

clc;
clear;
close;

//Given data
P=6*10^(-3);                                    // The peak power of rectangular pulse
L=40*10^3;                                      // Fiber of length
Floss=0.2;                                      // The fiber loss (dB/Km)
gamm=1.1*10^(-3);

alpha=Floss/4.343;                              // Attenuation coefficient
Zeff=(1-exp(-alpha*10^(-3)*L))/alpha*10^3;

// The nonlinear phase shift at the center of the pulse
phi=gamm*P*Zeff;                                // Nonlinear phase shift

//Displaying results in the command window
printf("\n The nonlinear phase shift at the center of the pulse = %0.4f rad ",phi);


// Results using first order
B01=sqrt(1+gamm^2*P^2*(Zeff)^2);                // Amplitude shift 
thet1=atan(gamm*P*Zeff);                        // Non-linear phase shift 

//Displaying results in the command window
printf("\n\n Amplitude shift using first order = %0.3f ",B01);
printf("\n Non-linear shift using first order = %0.5f rad",thet1);

// Results using second order
x=1-((gamm)^2/2*P^2*Zeff^2);
y=gamm*P*Zeff;
thet2=atan(y/x);                                // Nonlinear phase shift
B02=x/cos(thet2);                               // Amplitude shift

//Displaying results in the command window
printf("\n\n Amplitude shift using second order = %0.5f ",B02);             // Answer is varying due to round-off error
printf("\n Non-linear shift using second order = %0.5f rad",thet2);         // Answer is varying due to round-off error
