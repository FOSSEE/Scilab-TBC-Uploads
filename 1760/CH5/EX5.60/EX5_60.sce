                   //EXAMPLE 5-60  PG NO-343
V=60;                //VOLTAGE
R1=3;
R2=4;
R3=1.5;
R4=2.5;
IAB=12;
IBC=6;
ICD=6;
IBD=6;
VAB=36;
VBC=9;
VCD=15;
VBD=24;
VkIk=VAB*IAB+VBC*IBC+VCD*ICD+VBD*IBD-V*IAB
disp('ii) SUBMISSION OF VkIk (VkIk) is    =  '+string (VkIk) +'   ');
