//Problem 41.16: Five identical attenuator sections are connected in cascade. The overall attenuation is 70 dB and the voltage input to the first section is 20 mV. Determine (a) the attenuation of eac individual attenuation section, (b) the voltage output of the fina stage, and (c) the voltage output of the third stage.

//initializing the variables:
attnO = 70; // in dB
n = 5; // numbers of identical atteneurs
V1 = 0.02; // in Volts

//calculation:
//attenuation of each section
attn = attnO/n
//output of the final stage
Vo = V1/(10^(attnO/20))
//voltage output of the third stage
V3 = V1/(10^(3*attn/20))

printf("\n\n Result \n\n")
printf("\n attenuation of each section = %.0f dB ",attn)
printf("\n output of the final stage is %.2E V ",Vo)
printf("\n voltage output of the third stage is %.2E V ",V3)