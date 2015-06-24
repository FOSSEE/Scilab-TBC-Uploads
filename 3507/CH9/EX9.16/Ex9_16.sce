//chapter9
//example9.16
//page158

// for dc output
    // for centre-tap circuit
        n=5
        Vp=230 // V rms
        Rl=100 //ohm
        Vs=Vp/n // V rms
        Vsm=Vs*2^0.5 // maximum voltage across secondary 
        Vm=Vsm/2 // maximum voltage across half secondary winding
        Vdc=2*Vm/%pi // since Vdc=Idc*Rl and Idc=2*Vm/(%pi*Rl)

    // for bridge circuit
        n_dash=5
        Vp_dash=230 // V rms
        Rl_dash=100 //ohm
        Vs_dash=Vp_dash/n_dash// V rms
        Vsm_dash=Vs*2^0.5 // maximum voltage across secondary 
        Vm_dash=Vsm_dash
        Vdc_dash=2*Vm_dash/%pi // since Vdc=Idc*Rl and Idc=2*Vm/(%pi*Rl)


// for same dc output Vm must be same for both circuits i.e. n=5 for centre-tap and n=10 for bridge
    // for centre-tap circuit
        n1=5
        Vs1=Vp/n1 // V rms
        Vsm1=Vs1*2^0.5 // maximum voltage across secondary 
        Vm1=Vsm1/2
        PIV1=2*Vm1
    
    // for bridge circuit
        n2=5
        Vs2=Vp/n2 // V rms
        Vsm2=Vs2*2^0.5 // maximum voltage across secondary 
        Vm2=Vsm2/2
        PIV2=Vm2
        
printf("dc output voltage for centre-tap circuit = %.3f V \n",Vdc) 
printf("dc output voltage for bridge circuit = %.3f V \n \n",Vdc_dash)  

printf("for same output, PIV for centre-tap circuit = %.3f V and bridge circuit = %.3f V \n",PIV1,PIV2)     
    
// the figure of transformer is for reference only. Also it cannot be plotted in scilab since scilab does not have centre-tap transformer
